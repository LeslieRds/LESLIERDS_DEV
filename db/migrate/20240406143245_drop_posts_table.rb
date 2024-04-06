class DropPostsTable < ActiveRecord::Migration[7.0]
  def up
    drop_table :posts
  end

  def down
    create_table :posts do |t|
    end
  end
end
