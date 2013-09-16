class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      t.string :text
      t.integer :ticket_id
      t.integer :user_id
      t.integer :state_id
      t.integer :previous_state_id

      t.timestamps
    end
  end
end
