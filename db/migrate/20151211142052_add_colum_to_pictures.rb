class AddColumToPictures < ActiveRecord::Migration
  def change
    add_reference :pictures, :prototype, index: true, foreign_key: true
  end
end
