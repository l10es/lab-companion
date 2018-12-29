class AddGradeIdToMembers < ActiveRecord::Migration[5.2]
  def change
    add_column :members, :grade_id, :integer, :default => 1
  end
end
