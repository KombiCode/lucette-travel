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

ActiveRecord::Schema.define(version: 2021_03_21_162230) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.string "category"
    t.string "name"
    t.text "description"
    t.float "price"
    t.integer "rating"
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.interval "duration"
    t.json "opening_hours"
    t.string "photo_title"
    t.float "latitude"
    t.float "longitude"
    t.index ["latitude", "longitude"], name: "index_activities_on_latitude_and_longitude"
  end

  create_table "bookings", force: :cascade do |t|
    t.string "category"
    t.string "name"
    t.datetime "begin_date"
    t.datetime "end_date"
    t.float "price"
    t.string "address"
    t.bigint "trip_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "photo_title"
    t.index ["trip_id"], name: "index_bookings_on_trip_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.string "category"
    t.string "name"
    t.text "description"
    t.boolean "done"
    t.bigint "trip_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["trip_id"], name: "index_tasks_on_trip_id"
  end

  create_table "trip_activities", force: :cascade do |t|
    t.bigint "trip_id", null: false
    t.bigint "activity_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "done", default: false
    t.date "date"
    t.interval "start_hour"
    t.index ["activity_id"], name: "index_trip_activities_on_activity_id"
    t.index ["trip_id"], name: "index_trip_activities_on_trip_id"
  end

  create_table "trips", force: :cascade do |t|
    t.string "name"
    t.string "country"
    t.string "city"
    t.date "begin_date"
    t.date "end_date"
    t.string "language"
    t.string "devise"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.string "photo_title"
    t.text "description"
    t.index ["user_id"], name: "index_trips_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "firstname"
    t.string "lastname"
    t.string "phone"
    t.boolean "admin"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bookings", "trips"
  add_foreign_key "tasks", "trips"
  add_foreign_key "trip_activities", "activities"
  add_foreign_key "trip_activities", "trips"
  add_foreign_key "trips", "users"
end
