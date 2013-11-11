class CreateBatches < ActiveRecord::Migration
  def change
    create_table :batches do |t|
       	t.string :name
    	t.integer :course_id
    	t.date :started_on
    	t.date :ended_on
    	t.boolean :is_active, :default => true
    	t.boolean :is_deleted, :default => false
    	t.string :employee_id
      t.string :major
      t.string :school_year
      t.string :language 
      t.string :batch_type 

      t.timestamps
    end
    add_index :batches, [:is_deleted, :is_active, :course_id, :name]
  end
end
