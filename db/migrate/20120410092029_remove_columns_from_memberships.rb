class RemoveColumnsFromMemberships < ActiveRecord::Migration
  def up
    remove_column :memberships, :owner
    remove_column :memberships, :occupant
  end

  def down
    add_column :memberships, :owner, :boolean
    add_column :memberships, :occupant, :boolean
  end
end
