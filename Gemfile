source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.0'

gem 'pg'

gem 'rails', '~> 6.0.3', '>= 6.0.3.4'

# gem 'sqlite3', '~> 1.4'

gem 'puma', '~> 4.1'

gem 'sass-rails', '>= 6'

gem 'webpacker', '~> 4.0'

gem 'turbolinks', '~> 5'

gem 'jbuilder', '~> 2.7'

gem 'carrierwave'

gem 'cloudinary'

gem 'bootsnap', '>= 1.4.2', require: false

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]

  gem 'hirb'

  gem 'database_cleaner', '~> 1.8', '>= 1.8.5'

  gem 'rspec-rails', '~> 4.0', '>= 4.0.1'
end

group :development do
  gem 'web-console', '>= 3.3.0'

  gem 'listen', '~> 3.2'

  gem 'spring'

  gem 'spring-watcher-listen', '~> 2.0.0'

  gem 'rubocop', '~>0.81.0'
end

group :test do
  gem 'shoulda-matchers', '~> 4.4', '>= 4.4.1'

  gem 'capybara', '~> 3.33'

  gem 'selenium-webdriver', '~> 3.142', '>= 3.142.7'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
