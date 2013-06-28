class AddColumn4 < ActiveRecord::Migration
  def up
    add_column :students  , :country_id , :integer
    add_column :guardians , :country_id , :integer
    add_column :students  , :user_id    , :integer
    add_column :guardians , :user_id    , :integer
  end

  def down
  end
end
