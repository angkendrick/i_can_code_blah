class CreateTutorials < ActiveRecord::Migration
  def change
    create_table :tutorials do |t|
      t.integer :user_id
      t.string :name
      t.string :description
      t.string :url
      t.string :image
      t.decimal :cost
      t.string :difficulty
      t.string :format
      t.string :company
      t.timestamps
    end
  end
end
