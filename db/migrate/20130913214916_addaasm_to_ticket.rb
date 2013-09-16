class AddaasmToTicket < ActiveRecord::Migration
  def up
  	add_column :tickets, :ticket_state, :string
  end

  def down
  	remove_column :tickets, :ticket_state
  end
end
