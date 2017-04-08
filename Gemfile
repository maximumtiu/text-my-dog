source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.0.2'
gem 'pg', '~> 0.20'
gem 'puma', '~> 3.0'
gem 'sass-rails'
gem 'uglifier'
gem 'coffee-rails'
gem 'rollbar'
gem 'twilio-ruby'

group :development, :test do
  gem 'pry'
  gem 'pry-byebug'
  gem 'dotenv-rails'
end

group :development do
  gem 'better_errors' # more helpful errors
  gem 'web-console' # console on error page
end

# necessary for heroku
group :production do
  gem 'rails_12factor'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
