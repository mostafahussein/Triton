class CreateEmployeeCategories < ActiveRecord::Migration
  def change
    create_table :employee_categories do |t|

    	t.string :name
    	t.string :prefix
    	t.boolean :status
    	t.integer :school_id

      t.timestamps
    end
  end
end
