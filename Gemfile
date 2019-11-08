source "https://rubygems.org"
ruby "2.2.2"

gem "rails", "4.2.1"

gem "app_konfig"
gem "pg"
gem "sass-rails", "~> 5.0"
gem "uglifier", ">= 1.3.0"
gem "coffee-rails", "~> 4.1.0"
gem "jquery-rails"
gem "turbolinks"
gem "jbuilder", "~> 2.0"
gem "sdoc", "~> 0.4.0", group: :doc
gem "decent_exposure"
gem "spree", github: "spree/spree", branch: "3-0-stable"
gem "spree_auth_devise", github: "spree/spree_auth_devise", branch: "3-0-stable"
gem "aws-sdk", "1.64.0"
gem "rollbar", "~> 1.5.1"
gem "decent_exposure"

group :development, :test do
  gem "byebug"
  gem "pry-rails"
  gem "pry-rescue"
  gem "web-console", "~> 3.3"
end

group :test do
  gem "factory_girl_rails"
  gem "rspec-rails"
  gem "database_cleaner"
end

group :development do
  gem "better_errors"
  gem "guard-rails"
  gem "guard-rspec"
  gem "guard-rubocop"
  gem "spring"
  gem "quiet_assets"
  gem "bullet"
end

group :production do
  gem "rails_12factor"
end
