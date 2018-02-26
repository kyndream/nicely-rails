source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.0.6'                 # Bundle edge Rails instead: gem 'rails', github: 'rails/rails'


# web server
gem 'passenger'                         # Use passenger as the app server
gem 'puma', '~> 3.0'                    # Use Puma as the app server

# db
gem 'pg', '~> 0.18'                     # Use postgresql as the database for Active Record

# front end
gem 'haml'                              # Use haml for html
gem 'sass-rails', '~> 5.0'              # Use SCSS for stylesheets
gem 'uglifier', '>= 1.3.0'              # Use Uglifier as compressor for JavaScript assets
gem 'coffee-rails', '~> 4.2'            # Use CoffeeScript for .coffee assets and views
gem 'jquery-rails'                      # Use jquery as the JavaScript library
gem 'turbolinks', '~> 5'                # Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'jquery-turbolinks'
gem 'jbuilder', '~> 2.5'                # Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder

group :development, :test do
  gem 'byebug'                          # Call 'byebug' anywhere in the code to stop execution and get a debugger console
end

group :development do
  gem 'dotenv-rails', '1.0.2'           # Environment variable management
  gem 'web-console'                     # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'pry-rails'
  gem 'listen', '~> 3.0.5'
  gem 'awesome_print'
  gem 'spring'                          # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'better_errors'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]


# put project specific gems here
gem 'devise'                            # User Authentication
gem 'carrierwave', '~> 1.0'             # File uploads (profile pic)
