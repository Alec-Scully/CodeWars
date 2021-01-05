class CreateFactions < ActiveRecord::Migration[6.0]
  def change
    create_table :factions do |t|
      t.string :name
      t.string :description
      t.integer :battles_won
      t.integer :battles_lost
      t.timestamps
    end
  end
end
