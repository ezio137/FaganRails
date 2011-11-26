class CreateSistemaPerfis < ActiveRecord::Migration
  def change
    create_table :sistema_perfis do |t|
      t.string :nome
      t.text :descricao

      t.timestamps
    end
  end
end
