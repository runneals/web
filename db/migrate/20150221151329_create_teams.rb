class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.string :city
      t.string :state
      t.string :country
      t.string :website
      t.string :facebook
      t.string :twitter
      t.string :gplus
      t.string :instagram
      t.text :other_names

      t.timestamps null: false
    end
  end
end
