source 'https://rubygems.org'

#Core
gem 'rails', '3.2.16'
gem 'jquery-rails'
gem 'dotenv-rails', :groups => [:development, :test, :production]

#Authentication/Authorization
gem 'devise'

#Ruby Trello API
gem 'omniauth-trello'
gem 'omniauth'

#Utilities
gem 'simple_form'
gem 'activerecord-import'
gem 'paperclip', '~> 4.1'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'
group :production do
  gem 'pg'
  gem 'rspec-rails', '2.0.1'
end

group :test do
  gem 'rspec', '2.0.1'
  gem 'webrat', '0.7.1'
end

group :development, :test do
  gem 'sqlite3'
end

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'bootstrap-sass', '~> 2.2.2.0'
  gem 'uglifier', '>= 1.0.3'
end
