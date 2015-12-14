class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :nickname
      t.text :profile
      t.text :works

      t.timestamps null: false
    end
  end
end
