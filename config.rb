activate :directory_indexes

activate :s3_sync do |s3_sync|
  s3_sync.bucket = 'tdd.spilth.org'
  s3_sync.acl    = 'public-read'
end

set :markdown_engine, :redcarpet
set :markdown, :fenced_code_blocks => true, :smartypants => true

set :css_dir, 'stylesheets'
set :images_dir, 'images'
set :js_dir, 'javascripts'

set :layout, 'tdd'

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page "/path/to/file.html", layout: :otherlayout

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", locals: {
#  which_fake_page: "Rendering a fake page with a local variable" }

# General configuration

###
# Helpers
###

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

# Build-specific configuration
configure :build do
  # Minify CSS on build
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript
end
