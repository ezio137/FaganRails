class AlterarNomesColunas < ActiveRecord::Migration
  def change
    rename_column :contas_financeiras, :tipo_conta_id, :tipo_conta_financeira_id
    rename_column :funcionalidades, :tipo_acao_id, :tipo_funcionalidade_id
    rename_column :funcionalidades, :acao_pai_id, :funcionalidade_pai_id
    rename_column :funcionalidades_perfis, :acao_id, :funcionalidade_id
  end
end
