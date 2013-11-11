class CreateEmployeePositions < ActiveRecord::Migration
  def change
    create_table :employee_positions do |t|
    	t.string :position_title
    	t.integer :employee_department_id

      t.timestamps
    end
  end
end
