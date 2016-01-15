require 'makepdf'

activate :directory_indexes
activate :pdfgenerator

activate :s3_sync do |s3_sync|
  s3_sync.bucket = 'tdd.spilth.org'
  s3_sync.acl    = 'public-read'
end

set :markdown_engine, :redcarpet
set :markdown, :fenced_code_blocks => true, :smartypants => true

set :css_dir, 'stylesheets'
set :images_dir, 'images'
set :js_dir, 'javascripts'
set :fonts_dir,  'fonts-folder'

set :layout, 'tdd'

page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

helpers do
  def section(section_name)
    partial_path =  "language/#{current_page.data.language.downcase}/_#{section_name}"
    file_path = File.join(root, "source/#{partial_path}.md")
    if File.exist?(file_path)
      partial(partial_path)
    else
      partial('missing')
    end
  end
end

configure :build do
end

