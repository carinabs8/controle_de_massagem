class ApplicationMailer
	# Dir["app.rb"].each {|file| require File.expand_path(file) }
	attr_accessor :config_smtp

	def initialize
		@config_smtp = {
		  :via => :smtp,
		  :via_options => {
		    :address              => ENV["MAILER_ADDRESS"],
		    :port                 => ENV["MAILER_PORT"],
		    :enable_starttls_auto => true,
		    :user_name            => ENV["MAILER_USERNAME"],
		    :password             => ENV["MAILER_PASSWORD"],
		    :authentication       => :plain, # :plain, :login, :cram_md5, no auth by default
		    :domain               => ENV["MAILER_DOMINIO"] # the HELO domain provided by the client to the server
		  }
		}
	end

	def enviar_email_administrativo
		Usuario.where(enviar_email: true).each do |user|
			args = config_smtp.merge!({
				from: user.email,
				html_body: '<p>Bom dia,</p> <p>Gostaria de marcar a massage.</p> <p>De preferencia na parte da tarde.</p><p>Att, <%=user.nome_completo %></p>',
				subject: "Massagem",
				sender: user.nome,
				to: "administrativo@unimedrj.coop.br"
			})
			Pony.mail(args)
		end
	end
end