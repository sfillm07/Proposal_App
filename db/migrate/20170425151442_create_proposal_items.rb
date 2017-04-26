class CreateProposalItems < ActiveRecord::Migration[5.0]
  def change
    create_table :proposal_items do |t|
      t.string :name
      t.float :price
      t.belongs_to :proposal, index: true

      t.timestamps
    end
  end
end
