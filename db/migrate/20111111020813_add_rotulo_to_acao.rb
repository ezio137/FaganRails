class AddRotuloToAcao < ActiveRecord::Migration
  def change
    add_column :sistema_acoes, :rotulo, :string
    add_column :sistema_acoes, :ordem, :integer
  end
end
