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

ActiveRecord::Schema.define(version: 2022_09_27_133519) do

  create_table "contacts", force: :cascade do |t|
    t.string "contato_1"
    t.string "contato_2"
    t.integer "follower_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["follower_id"], name: "index_contacts_on_follower_id"
  end

  create_table "followers", force: :cascade do |t|
    t.string "nome"
    t.integer "idade"
    t.integer "parish_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email"
    t.text "endereco"
    t.string "contato"
    t.index ["parish_id"], name: "index_followers_on_parish_id"
  end

  create_table "mountings", force: :cascade do |t|
    t.integer "follower_id", null: false
    t.integer "team_id", null: false
    t.date "ano"
    t.string "funcao"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["follower_id"], name: "index_mountings_on_follower_id"
    t.index ["team_id"], name: "index_mountings_on_team_id"
  end

  create_table "parishes", force: :cascade do |t|
    t.string "nome_paroquia"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string "nome_equipe"
    t.integer "qnt_componente"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "contacts", "followers"
  add_foreign_key "followers", "parishes"
  add_foreign_key "mountings", "followers"
  add_foreign_key "mountings", "teams"
end
