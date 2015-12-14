class AddTagToPrototypes < ActiveRecord::Migration
  def change
    add_reference :prototypes, :tag, index: true, foreign_key: true
  end
end
