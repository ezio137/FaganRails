class CreateFinanceiroTransacoes < ActiveRecord::Migration
  def change
    create_table :financeiro_transacoes do |t|

      t.timestamps
    end
  end
end
