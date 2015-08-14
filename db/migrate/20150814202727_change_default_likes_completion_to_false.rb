class ChangeDefaultLikesCompletionToFalse < ActiveRecord::Migration
  def change
    change_column :likes, :completed, :boolean, :default => false
  end
end
