class CreateLineitems < ActiveRecord::Migration[5.0]
  def change
    create_table :lineitems do |t|

      t.timestamps
    end
  end
end
