class CreateCounselorBatches < ActiveRecord::Migration
  def change
    create_table :counselor_batches do |t|
    	t.integer :batch_id

      t.timestamps
    end
  end
end
