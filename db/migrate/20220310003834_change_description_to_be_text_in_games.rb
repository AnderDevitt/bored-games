class ChangeDescriptionToBeTextInGames < ActiveRecord::Migration[6.1]
  def up
    change_column :games, :description, :text
  end

  def down
    change_column :games, :description, :string
  end
end
