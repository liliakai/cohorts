class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.boolean :occupant
      t.boolean :owner
      t.timestamps
    end
  end
end
