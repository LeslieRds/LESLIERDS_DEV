class DropCommentsTable < ActiveRecord::Migration[7.0]
  def up
    drop_table :comments
  end

  def down
    create_table :comments do |t|
    end
  end
end
