class CreateSistemaAcoesPerfis < ActiveRecord::Migration
  def change
    create_table :sistema_acoes_perfis do |t|
			t.references :acao
			t.references :perfil
			
      t.timestamps
    end
  end
end
