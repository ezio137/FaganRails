class RemoverNamespaceBancos < ActiveRecord::Migration
  def change
    rename_table 'financeiro_bancos', 'bancos'
  end
end
