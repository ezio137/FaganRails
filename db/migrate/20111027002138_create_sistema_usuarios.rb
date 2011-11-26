class CreateSistemaUsuarios < ActiveRecord::Migration
  def change
    create_table :sistema_usuarios do |t|
      t.string :login
      t.string :password_digest

      t.timestamps
    end
  end
end
