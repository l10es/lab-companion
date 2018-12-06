class RemoveIconFromMembers < ActiveRecord::Migration[5.2]
  def change
    remove_column :members, :icon, :binary
  end
end
