Dir["app.rb"].each {|file| require File.expand_path(file) }
scheduler = Rufus::Scheduler.new
scheduler.cron '0 9 * * 1 America/Sao_Paulo' do
  MarcacaoDeMassagemWorker.perform_async
end