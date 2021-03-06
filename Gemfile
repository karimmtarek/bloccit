source 'https://rubygems.org'

ruby '2.1.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.6'
# Database for Active Record & some other gems
group :production do
  gem 'pg'
  gem 'rails_12factor'
  gem 'unicorn'
end

group :development do
  gem 'sqlite3'
  gem 'thin'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'quiet_assets'
end

group :test do
  gem 'rspec-rails', '~> 3.1.0'
  gem 'capybara'
  gem 'database_cleaner'
  gem 'factory_girl_rails', '~> 4.0'
end

group :development, :test do
  gem 'did_you_mean'
  gem 'jazz_hands'
end

# Use Haml for views
gem 'haml-rails'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Using CSS framework - Bootstap
gem 'bootstrap-sass', '~> 3.1.1'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# figaro: application settings / environment
gem 'figaro', '1.0'
# faker: generate fack content
gem 'faker'
# Devise: login system
gem 'devise'
# pundit: users authorization
gem 'pundit'
# redcarpet: markdown renderer
gem 'redcarpet'
# carrierwave: image uploder
gem 'carrierwave'
# mini_magick: image manipulation
gem 'mini_magick'
# fog: cloud services library
gem 'fog'
# will_paginate: for page pagination
gem 'will_paginate', '~> 3.0.5'
# New Relic
gem 'newrelic_rpm'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
gem 'spring',        group: :development

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]


