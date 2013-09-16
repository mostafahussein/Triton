class CreateEmployeePositions < ActiveRecord::Migration
  def change
    create_table :employee_positions do |t|

    	t.string :name
    	t.integer :employee_category_id
    	t.boolean :status
    	t.integer :school_id
    	
      t.timestamps
    end
  end
end
