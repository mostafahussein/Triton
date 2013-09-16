class Addremovecolumntomodel < ActiveRecord::Migration
  def up
  	remove_column :topics, :ticket_id, :integer
  	add_column :tickets, :topic_id, :integer
  end

  def down
  end
end
