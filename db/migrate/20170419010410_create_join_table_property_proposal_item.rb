class CreateJoinTablePropertyProposalItem < ActiveRecord::Migration[5.0]
  def change
    create_join_table :properties, :proposal_items do |t|
      #t.index [:property_id, :proposal_item_id]
      #t.index [:proposal_item_id, :property_id]
    end
  end
end
