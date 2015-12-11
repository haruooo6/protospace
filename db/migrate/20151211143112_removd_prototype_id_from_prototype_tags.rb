class RemovdPrototypeIdFromPrototypeTags < ActiveRecord::Migration
  def change
    remove_column :prototype_tags, :prototype_id, :integer
    remove_column :prototype_tags, :tag_id, :integer
  end
end
