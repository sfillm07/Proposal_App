class CreateBranches < ActiveRecord::Migration[5.0]
  def change
    create_table :branches do |t|
      t.string :branch_name
      t.string :branch_address
      t.string :branch_city
      t.string :branch_state
      t.string :branch_zip 
      t.string :branch_phone
      t.string :branch_fax

      t.timestamps
    end
  end
end
