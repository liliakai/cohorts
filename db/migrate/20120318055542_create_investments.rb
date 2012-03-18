class CreateInvestments < ActiveRecord::Migration
  def change
    create_table :investments do |t|
      t.integer :user_id
      t.integer :house_id
      t.float :amount
      t.timestamps
    end
  end
end
