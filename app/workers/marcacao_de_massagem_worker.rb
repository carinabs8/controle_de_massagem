class MarcacaoDeMassagemWorker
	include Sidekiq::Worker
	sidekiq_options queue: "marcacao_de_massagem_worker"

  def perform()
    (ApplicationMailer.new).enviar_email_administrativo
  end
end