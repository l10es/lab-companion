class AddMemberIdToTodos < ActiveRecord::Migration[5.2]
  def change
    add_column :todos, :member_id, :integer
    Todo.reset_column_information
  end
end
