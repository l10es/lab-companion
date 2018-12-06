class CreateMemberGrades < ActiveRecord::Migration[5.2]
  def change
    create_table :member_grades do |t|
      t.string :name

      t.timestamps
    end
  end
end
