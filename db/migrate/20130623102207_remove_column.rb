class RemoveColumn < ActiveRecord::Migration
  def up
    remove_column :students , :nationality_id
  end

  def down
  end
end
