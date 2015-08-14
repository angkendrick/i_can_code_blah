class AddDefaultValueToLikesCompletion < ActiveRecord::Migration
  def change
    change_column :likes, :completed, :boolean, :default => true
  end
end
