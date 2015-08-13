class CreateTutorialSubjects < ActiveRecord::Migration
  def change
    create_table :tutorial_subjects do |t|
      t.integer :tutorial_id
      t.integer :subject_id
      t.timestamps
    end
  end
end
