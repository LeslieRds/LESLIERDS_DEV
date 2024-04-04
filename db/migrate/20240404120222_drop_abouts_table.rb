class DropAboutsTable < ActiveRecord::Migration[7.0]
  def up
    drop_table :abouts
  end

  def down
    create_table :abouts do |t|
    end
  end
end
