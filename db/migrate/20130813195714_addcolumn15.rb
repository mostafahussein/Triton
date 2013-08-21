class Addcolumn15 < ActiveRecord::Migration
  def up
  	add_column :guardians , :student_id , :integer
  end

  def down
  end
end
