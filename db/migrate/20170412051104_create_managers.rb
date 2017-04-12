class CreateManagers < ActiveRecord::Migration[5.0]
  def change
    create_table :managers do |t|
      t.references :company, foreign_key: true
      t.string :name
      t.string :cell_phone
      t.string :email

      t.timestamps
    end
  end
end
