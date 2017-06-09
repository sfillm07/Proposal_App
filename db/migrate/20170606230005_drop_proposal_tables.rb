class DropProposalTables < ActiveRecord::Migration[5.0]
  def change
    drop_table :properties_proposal_items
  end
end
