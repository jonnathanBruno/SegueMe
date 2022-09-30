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

ActiveRecord::Schema.define(version: 2022_09_30_142729) do

  create_table "circles", force: :cascade do |t|
    t.string "color"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string "contact"
    t.integer "follower_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["follower_id"], name: "index_contacts_on_follower_id"
  end

  create_table "followers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.integer "age"
    t.string "address"
    t.string "type_date"
    t.integer "parish_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["parish_id"], name: "index_followers_on_parish_id"
  end

  create_table "mountings", force: :cascade do |t|
    t.integer "follower_id", null: false
    t.integer "team_id"
    t.integer "circle_id"
    t.date "year"
    t.string "occupation"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["circle_id"], name: "index_mountings_on_circle_id"
    t.index ["follower_id"], name: "index_mountings_on_follower_id"
    t.index ["team_id"], name: "index_mountings_on_team_id"
  end

  create_table "parishes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.integer "qnt"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "contacts", "followers"
  add_foreign_key "followers", "parishes"
  add_foreign_key "mountings", "circles"
  add_foreign_key "mountings", "followers"
  add_foreign_key "mountings", "teams"
end
