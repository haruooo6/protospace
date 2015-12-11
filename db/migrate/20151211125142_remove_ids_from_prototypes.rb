class RemoveIdsFromPrototypes < ActiveRecord::Migration
  def change
    remove_column :prototypes, :user_id, :integer
    remove_column :prototypes, :tag_id, :integer
  end
end
