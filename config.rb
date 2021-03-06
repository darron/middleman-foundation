require 'extensions/sitemap.rb'

Faker::Config.locale = ENV["FAKER_LOCALE"]

###
# Compass
###

# Susy grids in Compass
# First: gem install susy
# require 'susy'

# Change Compass configuration
# compass_config do |config|
#   config.output_style = :compact
# end

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", :layout => false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy (fake) files
# page "/this-page-has-no-template.html", :proxy => "/template-file.html" do
#   @which_fake_page = "Rendering a fake page with a variable"
# end

###
# Helpers
###

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

helpers do

  def current_year
    Time.now.year
  end

  def random_name
    Faker::Name.name
  end

  def random_address
    "#{Faker::Address.street_address},<br/>#{Faker::Address.city}, #{Faker::Address.state}<br/>#{Faker::Address.postcode}"
  end

  def random_company_name
    Faker::Company.name
  end

  def random_phone_number
    Faker::PhoneNumber.phone_number
  end

  def random_email_address
    Faker::Internet.email
  end
  
end

set :css_dir, 'css'

set :js_dir, 'js'

set :images_dir, 'img'

activate :livereload

activate :sitemap_generator 

# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript

  # activate :minify_html

  # Enable cache buster
  # activate :cache_buster

  # Use relative URLs
  # activate :relative_assets

  # Compress PNGs after build
  # First: gem install middleman-smusher
  # require "middleman-smusher"
  # activate :smusher

  # Or use a different image path
  # set :http_path, "/Content/images/"
end