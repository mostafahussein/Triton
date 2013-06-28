class AddColumn7 < ActiveRecord::Migration
  def up
    add_column :students , :nationality_id , :integer
  end

  def down
  end
end
