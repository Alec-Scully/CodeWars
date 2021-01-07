  class CreateCharacters < ActiveRecord::Migration[6.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :species
      t.string :description
      t.string :faction_id
      t.string :classification
      t.string :status
      t.integer :battles_won
      t.integer :battles_lost
      t.integer :user_id
      t.timestamps
    end
  end
end
