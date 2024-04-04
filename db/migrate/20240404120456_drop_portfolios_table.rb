class DropPortfoliosTable < ActiveRecord::Migration[7.0]
  def up
    drop_table :portfolios
  end

  def down
    create_table :portfolios do |t|
    end
  end
end
