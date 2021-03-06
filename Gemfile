source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.4'

#################
# OUR GEMS
#################

# Get latest from GitHub
gem 'mongoid', github: 'mongoid/mongoid'

#makes mongoid.yml file

# Use SCSS for stylesheets
gem 'bootstrap-sass', '~> 3.2.0'
gem 'sass-rails', '~> 4.0.2'

#Mongoid Slug generates a URL slug or permalink based on one or more fields in a Mongoid model. It sits idly on top of stringex, supporting non-Latin characters.
gem 'mongoid_slug'


# RSpec
group :development, :test do
  gem 'rspec'
  gem 'rspec-rails'
  gem 'database_cleaner'
end

# Type “rails console” to use pry with your Rails app
gem 'pry-rails', :group => :development

# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'

# For Paperclip
gem "mongoid-paperclip", :require => "mongoid_paperclip"
gem 'aws-sdk'


#################
# RAILS GEMS
#################


# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

gem 'autoprefixer-rails'



# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

gem 'rails_12factor', group: :production  # heroku made it for us to help asset process happen
