class CreateFinanceiroConta < ActiveRecord::Migration
  def change
    create_table :financeiro_conta do |t|
		  t.string   :nome
		  t.string   :agencia
		  t.string   :numero
		  t.decimal  :saldo
		  t.decimal  :limite
		  t.date     :data_abertura
		  t.integer  :banco_id
		  t.integer  :tipo_conta_id
		  t.string   :type
		  t.decimal  :taxa
		  t.integer  :prazo
		  
		  t.timestamps
		end
  end
end
