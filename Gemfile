source 'https://rubygems.org'

gem 'rails', '3.2.3'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem "simple_form", "~> 2.0.2"
gem 'activeadmin'
gem 'will_paginate', '3.0.3'
gem 'bootstrap-will_paginate', '0.0.7'
gem 'friendly_id'
gem 'carrierwave'
gem 'rmagick'
gem 'jquery-rails'

# SEARCH ARCHITECTURE = TIRE + ELASTIC SEARCH
gem 'tire'

# FAKER GEM FOR CREATING FAKE USERS IN DEVELOPMENT
gem 'faker'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platform => :ruby
  gem 'uglifier', '>= 1.0.3'
  gem "bootstrap-sass", "~> 2.0.3.1"
  gem 'twitter-bootstrap-rails'
end

# Facebook Authentication
  gem 'omniauth-facebook'

# Testing Architecture
  group :test do
	gem 'sqlite3'
	gem 'rspec-rails', '2.10.0'
	gem "capybara", "~> 1.1.2"
	gem 'factory_girl_rails', '1.4.0'
  end  

# Development Database Architecture
  group :development do
    gem 'mysql2'		
  end

# Database Architecture
  group :production do
	gem "pg", "~> 0.13.2"
  end