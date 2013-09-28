class Addassigncol < ActiveRecord::Migration
  def up
  	add_column :tickets, :assign_state, :boolean, default: false
  end

  def down
  	remove_column :tickets, :assign_state
  end
end
