source 'https://rubygems.org'

gem 'rails', '3.2.8'
gem 'rake', '~>10.0.2'
gem 'thin'
gem 'ransack'

gem 'jquery-rails'
gem 'less-rails'
gem 'twitter-bootstrap-rails'
gem 'bootstrap-will_paginate'

gem 'will_paginate'
gem 'bcrypt-ruby', '~> 3.0.0'
gem 's3'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'therubyracer', :platforms => :ruby
  gem 'uglifier', '>= 1.0.3'
end

group :production do
  gem 'pg'
end

group :development, :test do
  gem 'sqlite3'
end

group :test do
  gem 'rspec-rails', '>= 2.11.0'
  gem 'factory_girl_rails', '>= 3.5.0'
  gem 'guard-rspec'
  gem 'capybara', '>= 1.1.2'
  gem 'database_cleaner', '>= 0.8.0'
  gem 'email_spec', '>= 1.2.1'
  gem 'launchy', '>= 2.1.0'
  gem 'spork'
  gem 'guard-spork'
end
