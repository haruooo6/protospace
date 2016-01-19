class AddColumnsToPictures < ActiveRecord::Migration
  def change
    add_column :pictures, :main, :string
    add_column :pictures, :sub1, :string
    add_column :pictures, :sub2, :string
    add_column :pictures, :sub3, :string
  end
end
