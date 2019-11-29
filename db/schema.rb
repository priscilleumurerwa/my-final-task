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

ActiveRecord::Schema.define(version: 2019_11_29_195159) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "brides", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.date "birth_date"
    t.string "sex"
    t.string "country"
    t.string "district"
    t.string "sector"
    t.string "cells"
    t.string "phone_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "comments", force: :cascade do |t|
    t.text "content"
    t.bigint "couple_id", null: false
    t.index ["couple_id"], name: "index_comments_on_couple_id"
  end

  create_table "couples", force: :cascade do |t|
    t.integer "category"
    t.bigint "groom_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["groom_id"], name: "index_couples_on_groom_id"
  end

  create_table "familles", force: :cascade do |t|
    t.integer "category"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "groom_id", null: false
    t.index ["groom_id"], name: "index_familles_on_groom_id"
  end

  create_table "grooms", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.date "birth_date"
    t.string "sex"
    t.string "country"
    t.string "district"
    t.string "sector"
    t.string "cells"
    t.string "phone_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "bride_id", null: false
    t.index ["bride_id"], name: "index_grooms_on_bride_id"
  end

  add_foreign_key "comments", "couples"
  add_foreign_key "couples", "grooms"
  add_foreign_key "familles", "grooms"
  add_foreign_key "grooms", "brides"
end
