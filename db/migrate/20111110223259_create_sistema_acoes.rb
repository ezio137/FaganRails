class CreateSistemaAcoes < ActiveRecord::Migration
  def change
    create_table :sistema_acoes do |t|
      t.string :nome
      t.text :descricao
      t.references :tipo_acao
      t.references :acao

      t.timestamps
    end
  end
end
