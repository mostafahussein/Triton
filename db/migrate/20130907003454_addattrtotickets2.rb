class Addattrtotickets2 < ActiveRecord::Migration
  def up
  	add_column :tickets , :first_name , :string
  	add_column :tickets , :last_name , :string
  	add_column :tickets , :email , :string
  end

  def down
  end
end
