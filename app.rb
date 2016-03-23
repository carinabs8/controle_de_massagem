require 'sinatra'
require 'sinatra/activerecord'
require './config/environments'

require 'rubygems'
require 'bundler'

Bundler.require

module ControleDeMassagem
	class App < Sinatra::Application
		module Models
	    autoload :Usuario, 'app/models/usurio'
	  end
		# use Routes::Usuarios
		set :sessions,
	    :httponly     => true,
	    :secure       => production?,
	    :expire_after => 31557600, # 1 year
	    :secret       => ENV['SESSION_SECRET']
	end
end