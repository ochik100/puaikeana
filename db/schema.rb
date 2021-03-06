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

ActiveRecord::Schema.define(version: 20150507095700) do

  create_table "community_service_chairs", force: :cascade do |t|
    t.integer  "nominee_id", limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "community_service_chairs", ["nominee_id"], name: "index_community_service_chairs_on_nominee_id", using: :btree

  create_table "cultural_consultants", force: :cascade do |t|
    t.integer  "nominee_id", limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "cultural_consultants", ["nominee_id"], name: "index_cultural_consultants_on_nominee_id", using: :btree

  create_table "fundraising_chairs", force: :cascade do |t|
    t.integer  "nominee_id", limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "fundraising_chairs", ["nominee_id"], name: "index_fundraising_chairs_on_nominee_id", using: :btree

  create_table "luau_chairs", force: :cascade do |t|
    t.integer  "nominee_id", limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "luau_chairs", ["nominee_id"], name: "index_luau_chairs_on_nominee_id", using: :btree

  create_table "marketing_chairs", force: :cascade do |t|
    t.integer  "nominee_id", limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "marketing_chairs", ["nominee_id"], name: "index_marketing_chairs_on_nominee_id", using: :btree

  create_table "nominees", force: :cascade do |t|
    t.string   "first_name",            limit: 255
    t.string   "last_name",             limit: 255
    t.string   "email",                 limit: 255
    t.boolean  "president_candidate",   limit: 1
    t.boolean  "vp_candidate",          limit: 1
    t.boolean  "secretary_candidate",   limit: 1
    t.boolean  "treasurer_candidate",   limit: 1
    t.boolean  "marketing_candidate",   limit: 1
    t.boolean  "fundraising_candidate", limit: 1
    t.boolean  "community_candidate",   limit: 1
    t.boolean  "luau_candidate",        limit: 1
    t.boolean  "cultural_candidate",    limit: 1
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  create_table "presidents", force: :cascade do |t|
    t.integer  "nominee_id", limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "presidents", ["nominee_id"], name: "index_presidents_on_nominee_id", using: :btree

  create_table "secretaries", force: :cascade do |t|
    t.integer  "nominee_id", limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "secretaries", ["nominee_id"], name: "index_secretaries_on_nominee_id", using: :btree

  create_table "treasurers", force: :cascade do |t|
    t.integer  "nominee_id", limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "treasurers", ["nominee_id"], name: "index_treasurers_on_nominee_id", using: :btree

  create_table "vice_presidents", force: :cascade do |t|
    t.integer  "nominee_id", limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "vice_presidents", ["nominee_id"], name: "index_vice_presidents_on_nominee_id", using: :btree

  add_foreign_key "community_service_chairs", "nominees"
  add_foreign_key "cultural_consultants", "nominees"
  add_foreign_key "fundraising_chairs", "nominees"
  add_foreign_key "luau_chairs", "nominees"
  add_foreign_key "marketing_chairs", "nominees"
  add_foreign_key "presidents", "nominees"
  add_foreign_key "secretaries", "nominees"
  add_foreign_key "treasurers", "nominees"
  add_foreign_key "vice_presidents", "nominees"
end
