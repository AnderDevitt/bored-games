class RemoveGenreFromGames < ActiveRecord::Migration[6.1]
  def change
    remove_column :games, :genre, :string
  end
end
