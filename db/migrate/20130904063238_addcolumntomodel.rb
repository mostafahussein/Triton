class Addcolumntomodel < ActiveRecord::Migration
  def up
  	add_column :tickets, :user_id, :integer
  	add_column :topics, :ticket_id, :integer
  end

  def down
  end
end
