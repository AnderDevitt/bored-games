class AddColumnToGames < ActiveRecord::Migration[6.1]
  def change
    add_column :games, :genre, :integer
  end
end
