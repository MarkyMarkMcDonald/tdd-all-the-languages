require 'pdfkit'
require 'fileutils'

class PdfGenerator < Middleman::Extension
  LANGUAGES = %w(ruby java kotlin node python ruby elixir)

  def manipulate_resource_list(resources)
    FileUtils::mkdir_p 'build/pdfs'

    LANGUAGES.each do |language|
      # Fake out Sitemap until PDFs are actually built
      FileUtils.touch("build/pdfs/#{language}.pdf")
      resources << Middleman::Sitemap::Resource.new(app.sitemap, "pdfs/#{language}.pdf", "build/pdfs/#{language}.pdf")
    end

    resources
  end

  def after_build(builder)
    FileUtils::mkdir_p 'build/pdfs'

    LANGUAGES.each do |language|
      begin
        file = File.open("build/language/#{language}/index.html", "rb")
        html = file.read
        kit = PDFKit.new(html,
          :margin_top => 10,
          :margin_bottom => 10,
          :margin_left => 10,
          :margin_right => 10,
          :print_media_type => true,
          :dpi => 96)

        kit.stylesheets << 'source/stylesheets/pdf.css'
        kit.to_file("build/pdfs/#{language}.pdf")

      rescue Exception =>e
        builder.say_status "PDF Maker",  "Error: #{e.message}", Thor::Shell::Color::RED
        raise
      end
    end

    builder.say_status "PDF Maker",  "PDFs Generated!"
  end
end

::Middleman::Extensions.register(:pdfgenerator, PdfGenerator)
