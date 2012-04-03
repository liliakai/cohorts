class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.integer :house_id
      t.string :name
      t.float :amount
      t.timestamps
    end
  end
end
