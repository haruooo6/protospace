class AddNicknameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :nickname, :string
    add_column :users, :profile, :text
    add_column :users, :works, :text
    add_column :users, :group, :string
    add_column :users, :avatar, :string
  end
end
