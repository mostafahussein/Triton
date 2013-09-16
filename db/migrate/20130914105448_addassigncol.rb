class Addassigncol < ActiveRecord::Migration
  def up
  	add_column :tickets, :assign_state, :string
  end

  def down
  	remove_column :tickets, :assign_state
  end
end
