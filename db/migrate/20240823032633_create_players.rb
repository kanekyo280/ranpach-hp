class CreatePlayers < ActiveRecord::Migration[7.0]
  def change
    create_table :players do |t|
      t.string :player_name,   null: false
      t.string :player_kana,   null: false
      t.integer :position_id,  null: false
      t.timestamps
    end
  end
end
