class CreateTeamDivisionInformations < ActiveRecord::Migration
  def change
    create_table :team_division_informations do |t|
      t.integer :division_id
      t.integer :team_id
      t.string :name
      t.string :organization
      t.integer :high
      t.integer :qp
      t.integer :rp
      t.integer :qual_wins
      t.integer :qual_losses
      t.integer :qual_ties
      t.integer :elim_wins
      t.integer :elim_losses
      t.integer :elim_ties

      t.timestamps null: false
    end
  end
end
