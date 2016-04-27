source 'https://rubygems.org'

gem 'active_model_serializers'

gem 'puma' # app server
gem 'pg' # postgres database
gem 'rack-attack' # rate-limiting
gem 'rack-cors' # cross-origin resource sharing
gem 'rails', '>= 5.0.0.beta3', '< 5.1'

# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  gem 'factory_girl_rails'
  gem 'rspec-rails', '~> 3.5.0.beta3'
end

group :development do
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'codeclimate-test-reporter', require: nil
end
