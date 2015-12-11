class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.integer :prototype_id
      t.integer :picture

      t.timestamps null: false
    end
  end
end
