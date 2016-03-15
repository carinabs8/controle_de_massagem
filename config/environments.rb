require 'rufus-scheduler'
require 'pony'
Dir["config/initializers/*.rb"].each {|file| require File.expand_path(file) }
Dir["app/*/*.rb"].each {|file| require File.expand_path(file) }