class AddFieldsToLineitems < ActiveRecord::Migration[5.0]
  def change
    add_column :lineitems, :name, :string
    add_column :lineitems, :price, :integer
  end
end
