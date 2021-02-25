class AddTypeToGamesTable < ActiveRecord::Migration[4.2]
  def change
    add_column :games, :genre, :string
  end
end
