class AddColumn5 < ActiveRecord::Migration
  def up
    add_column :students  , :school_id , :integer
    add_column :guardians , :school_id , :integer
  end

  def down
  end
end
