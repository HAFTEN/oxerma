source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.4.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.0.rc2'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'
# Use ActiveStorage variant
gem 'mini_magick', '~> 4.8'
# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false
# Haml-rails provides Haml generators for Rails. It also enables Haml as the templating engine
gem 'haml-rails', '~> 1.0'
# Build responsive, mobile-first projects on the web with the world's most popular front-end component library
gem 'bootstrap', '~> 4.0.0'
# Bootstrap JavaScript depends on jQuery
gem 'jquery-rails'
# Roles library supporting scope on resource object
gem 'rolify'
# Authorization through OO design and pure Ruby classes
gem 'pundit'
# Classier solution for file uploads for Rails, Sinatra and other Ruby web frameworks
gem 'carrierwave', '~> 1.0'
# Adds file validators to ActiveModel
gem 'file_validators', '~> 2.0', '>= 2.0.2'
# This gem is a port of Perl's Data::Faker library that generates fake data
gem 'faker'
# Поддержка русского языка для Ruby и Rails при помощи библиотеки I18n
gem 'russian'

group :development, :test do
  # Rspec-rails is a testing framework for Rails
  gem 'rspec-rails', '~> 3.7'
  # Is a fixtures replacement with a straightforward definition syntax, support for multiple build strategies
  gem 'factory_bot_rails'
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Use Capistrano for deployment
  gem 'capistrano-rails'
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
