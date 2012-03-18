class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.integer :user_id
      t.integer :house_id
      t.boolean :occupant
      t.boolean :owner
      t.timestamps
    end
  end
end
