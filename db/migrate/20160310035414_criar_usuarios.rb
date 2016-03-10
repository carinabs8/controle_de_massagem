class CriarUsuarios < ActiveRecord::Migration
  def self.up
  	create_table :usuarios do |t|
	     t.string :nome
	     t.string :nome_completo
	     t.string :email
       t.integer :enviar_email
	   end
	   Usuario.create(nome: "Carina", nome_completo: "Carina Brito Silva", email: "carinasilva@unimedrj.coop.br", enviar_email: true )
  end

  def self.down
  	drop_table :usuarios
  end
end
