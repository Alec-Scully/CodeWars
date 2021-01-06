class CreateBattles < ActiveRecord::Migration[6.0]
  def change
    create_table :battles do |t|
      t.integer "challenger_number"
      t.integer "character_number"
      t.timestamps
    end
  end
end
