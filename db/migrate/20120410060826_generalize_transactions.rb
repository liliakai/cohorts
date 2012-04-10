class GeneralizeTransactions < ActiveRecord::Migration
  def up
    rename_column :transactions, :user_id, :from_id
    rename_column :transactions, :house_id, :to_id
    add_column :transactions, :from_type, :string
    add_column :transactions, :to_type, :string
  end

  def down
    rename_column :transactions, :from_id, :user_id
    rename_column :transactions, :to_id, :house_id
    remove_column :transactions, :from_type
    remove_column :transactions, :to_type
  end
end
