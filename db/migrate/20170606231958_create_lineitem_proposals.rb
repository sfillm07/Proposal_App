class CreateLineitemProposals < ActiveRecord::Migration[5.0]
  def change
    create_table :lineitem_proposals do |t|

      t.timestamps
    end
  end
end
