source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.3"
 
gem "rails", "~> 7.0.4", ">= 7.0.4.3"
gem "sprockets-rails"
gem "sqlite3", "~> 1.4"
gem "carrierwave"
gem "puma", "~> 5.0"
gem 'selenium-webdriver'
gem 'nokogiri'
gem 'mechanize'
gem "importmap-rails"


gem "turbo-rails"
gem "stimulus-rails"


gem "jbuilder"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false
group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "web-console"

end
# テスト環境用
gem 'rubocop'
gem 'rspec'
gem 'guard-rspec', require: false

group :test do

  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
  gem 'activerecord'
end
