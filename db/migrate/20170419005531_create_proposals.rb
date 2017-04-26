class CreateProposals < ActiveRecord::Migration[5.0]
  def change
    create_table :proposals do |t|
      t.date :date
      
      t.timestamps
    end
  end
end
