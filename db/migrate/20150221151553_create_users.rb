class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :provider
      t.string :uid
      t.string :uuid
      t.string :first_name
      t.string :last_name
      t.string :name
      t.string :email
      t.string :oauth_token
      t.integer :role
      t.boolean :email_notifications
      t.datetime :oauth_expires_at

      t.timestamps null: false
    end
  end
end
