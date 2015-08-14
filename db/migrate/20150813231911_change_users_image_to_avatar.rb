class ChangeUsersImageToAvatar < ActiveRecord::Migration
  def change
    rename_column :users, :photo, :avatar
  end
end
