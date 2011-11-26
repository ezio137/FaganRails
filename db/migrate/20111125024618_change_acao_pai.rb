class ChangeAcaoPai < ActiveRecord::Migration
  def up
  	rename_column :sistema_acoes, :acao_id, :acao_pai_id
  end

  def down
  	rename_column :sistema_acoes, :acao_pai_id, :acao_id
  end
end
