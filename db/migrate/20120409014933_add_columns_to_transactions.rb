class AddColumnsToTransactions < ActiveRecord::Migration
  def change
    change_table :transactions do |t|
      t.column :type, :string
      t.column :title, :string
      t.column :body, :string, :limit => 4096
    end
  end
end
