class AddUserAttrToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :user_attr, :integer
    change_column :users, :user_attr, :integer, :null => false
  end
end
