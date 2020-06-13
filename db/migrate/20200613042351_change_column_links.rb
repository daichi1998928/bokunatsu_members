class ChangeColumnLinks < ActiveRecord::Migration[5.2]
  def change
    change_column_default :links, :is_bokunatsu, false
  end
end
