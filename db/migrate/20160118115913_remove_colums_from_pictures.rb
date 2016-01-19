class RemoveColumsFromPictures < ActiveRecord::Migration
  def change
    remove_column :pictures, :main
    remove_column :pictures, :sub1
    remove_column :pictures, :sub2
    remove_column :pictures, :sub3
  end
end
