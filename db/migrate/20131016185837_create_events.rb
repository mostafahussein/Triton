class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.date :event_date
      t.string :event_name
      t.string :event_description
      t.string :event_place

      t.timestamps
    end
  end
end
