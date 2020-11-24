# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_11_23_210638) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artist_from_works", force: :cascade do |t|
    t.bigint "work_id", null: false
    t.bigint "artist_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["artist_id"], name: "index_artist_from_works_on_artist_id"
    t.index ["work_id"], name: "index_artist_from_works_on_work_id"
  end

  create_table "artists", force: :cascade do |t|
    t.string "artist_id"
    t.string "name"
    t.string "nationality"
    t.string "delegation"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "events", force: :cascade do |t|
    t.string "event_id"
    t.string "edition"
    t.string "place"
    t.string "inicial_date"
    t.string "final_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "work_from_events", force: :cascade do |t|
    t.bigint "event_id", null: false
    t.bigint "work_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["event_id"], name: "index_work_from_events_on_event_id"
    t.index ["work_id"], name: "index_work_from_events_on_work_id"
  end

  create_table "works", force: :cascade do |t|
    t.string "work_id"
    t.string "title"
    t.string "date"
    t.string "size"
    t.string "support"
    t.string "technique"
    t.bigint "event_id", null: false
    t.bigint "artist_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["artist_id"], name: "index_works_on_artist_id"
    t.index ["event_id"], name: "index_works_on_event_id"
  end

  add_foreign_key "artist_from_works", "artists"
  add_foreign_key "artist_from_works", "works"
  add_foreign_key "work_from_events", "events"
  add_foreign_key "work_from_events", "works"
  add_foreign_key "works", "artists"
  add_foreign_key "works", "events"
end
