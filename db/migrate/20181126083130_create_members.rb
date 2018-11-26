class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.integer :role_id
      t.integer :room_status_id
      t.integer :member_status_id
      t.integer :member_grade_id
      t.string :member_id
      t.string :email
      t.string :name
      t.binary :icon

      t.timestamps
    end
  end
end
