class AddColumn10 < ActiveRecord::Migration
  def up
    add_column :students , :batch_id , :integer
  end

  def down
  end
end
