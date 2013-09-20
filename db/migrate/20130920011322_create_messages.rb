class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|

    	t.integer :sender_id,:null => false
    	t.integer :recepient_id
    	t.boolean :sender_deleted, :recepient_deleted, :default => 0
    	t.string :subject,:null => false
    	t.text :body
    	t.datetime :read_at
    	t.string :container,:default => "draft"

      t.timestamps
    end
  end
end