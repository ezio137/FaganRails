class CreateFinanceiroTiposConta < ActiveRecord::Migration
  def change
    create_table :financeiro_tipos_conta do |t|
      t.string :nome
      t.text :descricao

      t.timestamps
    end
  end
end
