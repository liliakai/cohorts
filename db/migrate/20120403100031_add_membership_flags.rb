class AddMembershipFlags < ActiveRecord::Migration
  def up
    change_table :memberships do |t|
      t.boolean :tenant, :default => true
    end
  end

  def down
    remove_column :memberships, :tenant
  end
end
