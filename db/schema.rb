# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150302005013) do

  create_table "award_winners", force: :cascade do |t|
    t.integer  "event_id"
    t.integer  "award_id"
    t.integer  "team_id"
    t.integer  "place"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "awards", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "order"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "divisions", force: :cascade do |t|
    t.integer  "event_id"
    t.string   "division_uuid"
    t.string   "name"
    t.integer  "match_count"
    t.integer  "team_count"
    t.integer  "high_total"
    t.integer  "high_scored"
    t.decimal  "average_total",          precision: 10, scale: 2
    t.decimal  "average_scored",         precision: 10, scale: 2
    t.integer  "red_wins"
    t.integer  "blue_wins"
    t.integer  "ties"
    t.decimal  "average_winning_total",  precision: 10, scale: 2
    t.decimal  "average_losing_total",   precision: 10, scale: 2
    t.decimal  "average_winning_scored", precision: 10, scale: 2
    t.decimal  "average_losing_scored",  precision: 10, scale: 2
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  create_table "events", force: :cascade do |t|
    t.integer  "season_id"
    t.string   "name"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string   "event_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "matches", force: :cascade do |t|
    t.integer  "division_id"
    t.string   "name"
    t.string   "match_type"
    t.integer  "r1_team_id"
    t.integer  "r2_team_id"
    t.integer  "r3_team_id"
    t.integer  "b1_team_id"
    t.integer  "b2_team_id"
    t.integer  "b3_team_id"
    t.integer  "scored_red"
    t.integer  "total_red"
    t.integer  "scored_blue"
    t.integer  "total_blue"
    t.string   "outcome"
    t.string   "video"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "seasons", force: :cascade do |t|
    t.integer  "year_start"
    t.integer  "year_end"
    t.string   "name"
    t.boolean  "offseason"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "team_division_informations", force: :cascade do |t|
    t.integer  "division_id"
    t.integer  "team_id"
    t.string   "name"
    t.string   "organization"
    t.integer  "high"
    t.integer  "qp"
    t.integer  "rp"
    t.integer  "qual_wins"
    t.integer  "qual_losses"
    t.integer  "qual_ties"
    t.integer  "elim_wins"
    t.integer  "elim_losses"
    t.integer  "elim_ties"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string   "name"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "website"
    t.string   "facebook"
    t.string   "twitter"
    t.string   "gplus"
    t.string   "instagram"
    t.text     "other_names"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "uuid"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "name"
    t.string   "email"
    t.string   "oauth_token"
    t.integer  "role"
    t.boolean  "email_notifications"
    t.datetime "oauth_expires_at"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

end
