source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.3.0"

gem 'bcrypt', '~> 3.1', '>= 3.1.20'
gem 'image_processing', '~> 1.12', '>= 1.12.2'
gem 'pg', '~> 1.5', '>= 1.5.4'
gem 'puma', '~> 6.4', '>= 6.4.1'
gem 'rails', '~> 7.1', '>= 7.1.2'
gem 'redis', '~> 5.0', '>= 5.0.8'
gem "authentication-zero"
gem "bootsnap", require: false
gem "class_variants"
gem "http"
gem "inline_svg"
gem "jsbundling-rails"
gem "meta-tags"
gem "sprockets-rails"
gem "stimulus-rails"
gem "tailwindcss-rails"
gem "turbo-rails"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem "rspec-rails"
  gem "dotenv-rails"
end

group :development do
  gem "letter_opener_web"
  gem "web-console"
end

group :test do
  gem "shoulda-matchers", require: false
  gem "capybara"
  gem "cuprite"
end
