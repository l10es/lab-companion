class AddRoleIdToMembers < ActiveRecord::Migration[5.2]
  def change
    add_column :members, :role_id, :integer, :default => 1
  end
end
