class CreateTicketKnowledgebases < ActiveRecord::Migration
  def change
    create_table :ticket_knowledgebases do |t|
    	t.integer :ticket_id
    	t.string :base_question
    	t.string :base_answer

      t.timestamps
    end
  end
end
