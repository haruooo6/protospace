class CreatePrototypes < ActiveRecord::Migration
  def change
    create_table :prototypes do |t|
      t.string :title
      t.string :catchcopy
      t.text :concept
      t.integer :likes_count

      t.timestamps
    end
  end
end
