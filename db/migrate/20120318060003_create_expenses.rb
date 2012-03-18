class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.integer :house
      t.string :name
      t.float :amount
      t.timestamps
    end
  end
end
