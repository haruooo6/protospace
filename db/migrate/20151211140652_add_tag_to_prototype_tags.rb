class AddTagToPrototypeTags < ActiveRecord::Migration
  def change
    add_reference :prototype_tags, :tag, index: true, foreign_key: true
    add_reference :prototype_tags, :prototype, index: true, foreign_key: true
  end
end
