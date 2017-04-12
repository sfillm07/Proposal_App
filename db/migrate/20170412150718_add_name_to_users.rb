class AddNameToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :name, :string
    add_column :users, :user_cell, :string
    add_column :users, :user_email, :string
  end
end
