class AddRoomStatusIdToMembers < ActiveRecord::Migration[5.2]
  def change
    add_column :members, :room_status_id, :integer, :default => 1
  end
end
