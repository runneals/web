class CreateAwardWinners < ActiveRecord::Migration
  def change
    create_table :award_winners do |t|
      t.integer :event_id
      t.integer :award_id
      t.integer :team_id
      t.integer :place

      t.timestamps null: false
    end
  end
end
