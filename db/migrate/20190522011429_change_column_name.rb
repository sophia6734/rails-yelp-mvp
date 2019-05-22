class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :restaurants, :phone_no, :phone_number
  end
end
