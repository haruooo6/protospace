class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :thumbnail
      t.integer :status

      t.timestamps
    end
  end
end
