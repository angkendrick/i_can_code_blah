class ChangeTutorialImageColumnName < ActiveRecord::Migration
  def change
    rename_column :tutorials, :image, :tutorialimage
  end
end
