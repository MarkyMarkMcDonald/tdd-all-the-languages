require 'pdfkit'
require 'fileutils'

class PdfGenerator < Middleman::Extension
  LANGUAGES = %w(ruby java kotlin node python ruby elixir)

  def before_build(builder)
    FileUtils::mkdir_p 'build/pdfs'

    LANGUAGES.each do |language|
      begin
        kit = PDFKit.new(File.new("build/language/#{language}/index.html"),
                         :margin_top => 10,
                         :margin_bottom => 10,
                         :margin_left => 10,
                         :margin_right => 10,
                         :print_media_type => true,
                         :dpi => 96)

        kit.to_file("build/pdfs/#{language}.pdf")

      rescue Exception =>e
        builder.say_status "PDF Maker",  "Error: #{e.message}", Thor::Shell::Color::RED
        raise
      end
    end

    builder.say_status "PDF Maker",  "PDFs Generated!"
  end

  def manipulate_resource_list(resources)
    LANGUAGES.each do |language|
      resources << Middleman::Sitemap::Resource.new(app.sitemap, "pdfs/#{language}.pdf", "build/pdfs/#{language}.pdf")
    end

    resources
  end

end


::Middleman::Extensions.register(:pdfgenerator, PdfGenerator)
