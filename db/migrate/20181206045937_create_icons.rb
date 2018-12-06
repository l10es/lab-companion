class CreateIcons < ActiveRecord::Migration[5.2]
  def change
    create_table :icons do |t|
      t.integer :member_id
      t.string :name
      t.string :content_type
      t.binary :content

      t.timestamps
    end
  end
end
