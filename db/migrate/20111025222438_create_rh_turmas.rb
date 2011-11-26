class CreateRhTurmas < ActiveRecord::Migration
  def change
    create_table :rh_turmas do |t|

      t.timestamps
    end
  end
end
