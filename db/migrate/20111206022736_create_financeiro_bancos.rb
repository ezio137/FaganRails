class CreateFinanceiroBancos < ActiveRecord::Migration
  def change
    create_table :financeiro_bancos do |t|
      t.string :nome
      t.text :descricao
      t.string :numero

      t.timestamps
    end
  end
end
