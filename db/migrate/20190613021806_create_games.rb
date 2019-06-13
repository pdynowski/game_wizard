class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
    	t.string :title, unique: true, null: false
    	t.integer :min_players, limit: 2, null: false
    	t.integer :max_players, limit: 2, null: false
    	t.string :description, limit: 300
    	t.string :external_link
      t.timestamps
    end

    add_index(:games, :title)
    add_index(:games, :min_players)
    add_index(:games, :max_players)
  end
end

