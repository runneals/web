class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :division_id
      t.string :name
      t.string :match_type
      t.integer :r1_team_id
      t.integer :r2_team_id
      t.integer :r3_team_id
      t.integer :b1_team_id
      t.integer :b2_team_id
      t.integer :b3_team_id
      t.integer :scored_red
      t.integer :total_red
      t.integer :scored_blue
      t.integer :total_blue
      t.string :outcome
      t.string :video

      t.timestamps null: false
    end
  end
end
