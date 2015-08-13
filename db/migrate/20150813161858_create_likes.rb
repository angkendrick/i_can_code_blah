class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.integer :user_id
      t.integer :tutorial_id
      t.boolean :completed
      t.timestamps
    end
  end
end
