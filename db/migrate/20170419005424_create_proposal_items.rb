class CreateProposalItems < ActiveRecord::Migration[5.0]
  def change
    create_table :proposal_items do |t|
      t.string :item_name
      t.float :item_price

      t.timestamps
    end
  end
end
