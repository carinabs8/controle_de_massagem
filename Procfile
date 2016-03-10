web: RAILS_ENV=ENV["RACK_ENV"] bundle exec puma -C config/puma.rb
worker: RAILS_ENV=ENV["RACK_ENV"] bundle exec sidekiq -C ./config/sidekiq.yml -r ./config/environments.rb