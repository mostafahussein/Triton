class AddColumn2 < ActiveRecord::Migration
  def up
    add_index :comments, :article_id
  end

  def down
  end
end
