class AddMemberIdToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :member_id, :intefer
  end
end
