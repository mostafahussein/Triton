class CreateEmployeeDepartments < ActiveRecord::Migration
  def change
    create_table :employee_departments do |t|
      t.string :name
      t.string :code

      t.timestamps
    end
  end
end
