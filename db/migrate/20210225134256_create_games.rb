class CreateGames < ActiveRecord::Migration[4.2]
  def change
    create_table :games do |t|
      t.string :title
      t.string :game_image
      t.text :blurb
      t.integer :user_id
      t.timestamps null: false
    end
  end
end


