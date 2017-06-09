class AddColumnToLineitemProposal < ActiveRecord::Migration[5.0]
  def change
    add_column :lineitem_proposals, :lineitem_id, :integer
    add_column :lineitem_proposals, :proposal_id, :integer
  end
end
