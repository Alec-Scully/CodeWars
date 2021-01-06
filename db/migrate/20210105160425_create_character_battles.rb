class CreateCharacterBattles < ActiveRecord::Migration[6.0]
  def change
    create_table :character_battles do |t|
      t.integer :user_id
      t.integer :character_id
      t.integer :battle_id
      t.timestamps
    end
  end
end
