class RemoverNamespaces < ActiveRecord::Migration
  def change
    rename_table 'sistema_usuarios', 'usuarios'
    rename_table 'sistema_perfis', 'perfis'
    rename_table 'sistema_acoes', 'funcionalidades'
    rename_table 'sistema_tipos_acao', 'tipos_funcionalidade'
    rename_table 'sistema_perfis_usuarios', 'perfis_usuarios'
    rename_table 'sistema_acoes_perfis', 'funcionalidades_perfis'
    rename_table 'rh_turmas', 'turmas'
    drop_table 'financeiro_conta'
    rename_table 'financeiro_contas', 'contas_financeiras'
    rename_table 'financeiro_tipos_conta', 'tipos_conta_financeira'
    rename_table 'financeiro_transacoes', 'transacoes_financeiras'
  end
end
