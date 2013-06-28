class AddColumn8 < ActiveRecord::Migration
  def up
    add_column :guardians , :ward_id , :integer
  end

  def down
  end
end
