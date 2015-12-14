class CreatePrototypes < ActiveRecord::Migration
  def change
    create_table :prototypes do |t|
      t.string :title
      t.string :catchcopy
      t.text :concept
      t.integer :user_id
      t.integer :tag_id

      t.timestamps null: false
    end
  end
end
