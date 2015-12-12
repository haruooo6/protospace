class DropTablePrototypeTags < ActiveRecord::Migration
  def change
    drop_table :prototype_tags
  end
end
