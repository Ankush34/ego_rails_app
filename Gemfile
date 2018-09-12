source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.4'
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
#authorization of users
gem 'pundit'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
# pagination for mongoid document based records
gem 'will_paginate_mongoid'
# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
# observer support for mongoid. Used for callback based code.
gem 'mongoid-observers', '~> 0.3.0'
gem 'rails-observers',  github: 'rails/rails-observers'
# this is global storage for the rails app
gem 'request_store'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.14'
  # following gem adds testing framework to the system
  gem 'rspec-rails', '~> 3.6'
  # whenever the test is run it is necessary to clean the database 
  gem 'database_cleaner', '~> 1.6', '>= 1.6.1'
  #
  gem 'mongoid-rspec', git: 'https://github.com/mongoid-rspec/mongoid-rspec.git'
  # 
  gem 'selenium-webdriver'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

  # mongoid gem for mongo db documents
  gem 'mongoid', '~> 6.2.0'
  # for launching pry in rails console
  gem 'pry-rails'
  # controlling user authentication
  gem 'devise'

  gem 'devise-jwt', '~> 0.5.8'
  
  gem 'jwt'
 
 end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

group :test do
  gem 'cucumber-rails', '~> 1.5'
end