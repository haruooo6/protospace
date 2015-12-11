class CreatePrototypeTags < ActiveRecord::Migration
  def change
    create_table :prototype_tags do |t|
      t.integer :tag_id
      t.integer :prototype_id

      t.timestamps null: false
    end
  end
end
