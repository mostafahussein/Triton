class AddColumn6 < ActiveRecord::Migration
  def up
    add_column :batches , :school_id , :integer
  end

  def down
  end
end
