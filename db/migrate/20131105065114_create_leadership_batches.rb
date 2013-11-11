class CreateLeadershipBatches < ActiveRecord::Migration
  def change
    create_table :leadership_batches do |t|
    	t.integer :batch_id

      t.timestamps
    end
  end
end
