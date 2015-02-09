class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :season_id
      t.string :name
      t.string :city
      t.string :state
      t.string :country
      t.datetime :start_date
      t.datetime :end_date
      t.string :event_type

      t.timestamps null: false
    end
  end
end
