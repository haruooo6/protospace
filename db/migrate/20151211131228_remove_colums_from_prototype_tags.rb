class RemoveColumsFromPrototypeTags < ActiveRecord::Migration
  def change
    remove_column :prototype_id, :integer
    remove_column :tag_id, :integer
  end
end
