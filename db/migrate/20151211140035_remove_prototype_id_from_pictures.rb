class RemovePrototypeIdFromPictures < ActiveRecord::Migration
  def change
    remove_column :pictures, :prototype_id, :integer
  end
end
