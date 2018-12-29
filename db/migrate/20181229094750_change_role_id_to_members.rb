class ChangeRoleIdToMembers < ActiveRecord::Migration[5.2]
  def change
    change_column :members, :role_id, :integer, :default => 2
  end
end
