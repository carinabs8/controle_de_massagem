source "https://rubygems.org"
ruby "2.2.3"
gem 'sidekiq'
gem 'activesupport'
gem 'pony', '~> 1.11' #sending mail
gem 'sinatra', '1.2.1'
gem 'rufus-scheduler', '~> 3.2'

gem "activerecord"
gem "sinatra-activerecord"
gem 'sinatra-flash'
gem 'sinatra-redirect-with-flash'

group :development do
 gem 'sqlite3'
 gem "tux"
end

group :production do
 gem 'pg'
end

gem 'dotenv-rails', :groups => [:development, :test]