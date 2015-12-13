class RemoveTagIdFromPrototypes < ActiveRecord::Migration
  def change
    remove_column :prototypes, :tag_id, :integer
  end
end
