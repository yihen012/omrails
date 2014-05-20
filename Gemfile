source 'https://rubygems.org'

#Core
gem 'rails', '3.2.16'
gem 'jquery-rails'
gem 'dotenv-rails', :groups => [:development, :test, :production]

#Automated Testing
 gem "ZenTest"
 gem "autotest-rails-pure"
 gem "autotest-growl"
 gem "autotest-fsevent"

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
end

group :test do
  gem 'webrat', '0.7.1'
end

group :development, :test do
  gem 'sqlite3'
  gem 'rspec-rails', '~> 3.0.0.beta'
end

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'bootstrap-sass', '~> 2.2.2.0'
  gem 'uglifier', '>= 1.0.3'
end
