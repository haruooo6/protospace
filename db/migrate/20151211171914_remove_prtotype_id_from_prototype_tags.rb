class RemovePrtotypeIdFromPrototypeTags < ActiveRecord::Migration
  def change
    remove_column :prototype_tags, :prtotype_id, :string
  end
end
