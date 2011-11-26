class CreateSistemaPerfisUsuarios < ActiveRecord::Migration
  def change
    create_table :sistema_perfis_usuarios do |t|
			t.references :perfil
			t.references :usuario	

      t.timestamps
    end
  end
end
