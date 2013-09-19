class ChangeTypeToInteger < ActiveRecord::Migration
  def up
  	change_column :messages, :sender_id, :integer
  	change_column :messages, :recepient_id, :integer
  end

  def down
  end
end
