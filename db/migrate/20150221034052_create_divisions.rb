class CreateDivisions < ActiveRecord::Migration
  def change
    create_table :divisions do |t|
      t.integer :event_id
      t.string :division_uuid
      t.string :name
      t.integer :match_count
      t.integer :team_count
      t.integer :high_total
      t.integer :high_scored
      t.decimal :average_total, precision: 10, scale: 2
      t.decimal :average_scored, precision: 10, scale: 2
      t.integer :red_wins
      t.integer :blue_wins
      t.integer :ties
      t.decimal :average_winning_total, precision: 10, scale: 2
      t.decimal :average_losing_total, precision: 10, scale: 2
      t.decimal :average_winning_scored, precision: 10, scale: 2
      t.decimal :average_losing_scored, precision: 10, scale: 2

      t.timestamps null: false
    end
  end
end
