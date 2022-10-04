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

ActiveRecord::Schema.define(version: 2022_10_04_143441) do

  create_table "circles", force: :cascade do |t|
    t.string "color"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "followers", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.string "email"
    t.date "birth"
    t.string "address"
    t.string "type_date"
    t.string "contact"
    t.integer "parish_id"
    t.index ["parish_id"], name: "index_followers_on_parish_id"
  end

  create_table "lectures", force: :cascade do |t|
    t.string "name"
    t.date "date_lecture"
    t.time "time_lecture"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "mountings", force: :cascade do |t|
    t.integer "speaker_id"
    t.integer "participant_id"
    t.integer "follower_id"
    t.integer "circle_id"
    t.integer "team_id"
    t.integer "lecture_id"
    t.date "year"
    t.string "occupation"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["circle_id"], name: "index_mountings_on_circle_id"
    t.index ["follower_id"], name: "index_mountings_on_follower_id"
    t.index ["lecture_id"], name: "index_mountings_on_lecture_id"
    t.index ["participant_id"], name: "index_mountings_on_participant_id"
    t.index ["speaker_id"], name: "index_mountings_on_speaker_id"
    t.index ["team_id"], name: "index_mountings_on_team_id"
  end

  create_table "parishes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "participants", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.string "email"
    t.date "birth"
    t.string "address"
    t.string "type_date"
    t.string "contact"
    t.integer "parish_id"
    t.string "surname"
    t.index ["parish_id"], name: "index_participants_on_parish_id"
  end

  create_table "speakers", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.string "email"
    t.date "birth"
    t.string "address"
    t.string "type_date"
    t.string "contact"
    t.integer "parish_id"
    t.index ["parish_id"], name: "index_speakers_on_parish_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.integer "qnt"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "followers", "parishes"
  add_foreign_key "mountings", "circles"
  add_foreign_key "mountings", "followers"
  add_foreign_key "mountings", "lectures"
  add_foreign_key "mountings", "participants"
  add_foreign_key "mountings", "speakers"
  add_foreign_key "mountings", "teams"
  add_foreign_key "participants", "parishes"
  add_foreign_key "speakers", "parishes"
end
