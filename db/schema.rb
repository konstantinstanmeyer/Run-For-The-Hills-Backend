# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_10_26_222815) do
  create_table "likes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "received_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "match_id"
  end

  create_table "matches", force: :cascade do |t|
    t.integer "user1_id"
    t.integer "user2_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "didtheymatch"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "profile_picture"
    t.string "photo_png"
    t.integer "beard_length"
    t.integer "moonshine_abv_level"
    t.integer "rodeo_buckles"
    t.string "truck_brand"
    t.string "mode_of_tobacco"
    t.boolean "pontoon_boat?"
    t.boolean "security_goat?"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "skips", force: :cascade do |t|
    t.integer "user_id"
    t.integer "rejected_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "first_name"
    t.string "last_name"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
