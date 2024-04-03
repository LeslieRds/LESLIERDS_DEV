class AddColumnToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :title, :string
    add_column :posts, :content, :text
    add_column :posts, :category, :string
    add_column :posts, :image, :text
  end
end
