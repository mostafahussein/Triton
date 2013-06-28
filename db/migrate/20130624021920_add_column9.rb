class AddColumn9 < ActiveRecord::Migration
  def up
    add_column :students , :passport_number , :text
    add_column :students , :has_paid_fees ,  :boolean
    add_column :students , :enrollment_date , :date

  end

  def down
  end
end
