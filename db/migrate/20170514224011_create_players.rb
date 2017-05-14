class CreatePlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :players do |t|
      t.integer :assists
      t.integer :goals
      t.integer :points
      t.string :first_name
      t.string :last_name
      t.string :position
      t.string :teams_played_for

      t.timestamps
    end
  end
end
