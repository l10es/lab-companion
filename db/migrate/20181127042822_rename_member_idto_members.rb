class RenameMemberIdtoMembers < ActiveRecord::Migration[5.2]
  def change
    rename_column :members, :member_id, :member_specific_id
  end
end
