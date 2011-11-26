class CreateSistemaTiposAcao < ActiveRecord::Migration
  def change
    create_table :sistema_tipos_acao do |t|
      t.string :nome
      t.text :descricao

      t.timestamps
    end
  end
end
