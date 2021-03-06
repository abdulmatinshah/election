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

ActiveRecord::Schema.define(version: 20131027104406) do

  create_table "candidates", force: true do |t|
    t.string   "name"
    t.integer  "uc_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "position_id"
  end

  add_index "candidates", ["position_id"], name: "index_candidates_on_position_id"
  add_index "candidates", ["uc_id"], name: "index_candidates_on_uc_id"

  create_table "downloads", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "path_file_name"
    t.string   "path_content_type"
    t.integer  "path_file_size"
    t.datetime "path_updated_at"
  end

  create_table "positions", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stations", force: true do |t|
    t.string   "name"
    t.integer  "uc_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "stations", ["uc_id"], name: "index_stations_on_uc_id"

  create_table "tehsils", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ucs", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "tehsil_id"
    t.integer  "type_id"
  end

  add_index "ucs", ["tehsil_id"], name: "index_ucs_on_tehsil_id"
  add_index "ucs", ["type_id"], name: "index_ucs_on_type_id"

  create_table "users", force: true do |t|
    t.string   "username",               default: "", null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "villages", force: true do |t|
    t.string   "name"
    t.integer  "population"
    t.integer  "uc_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "villages", ["uc_id"], name: "index_villages_on_uc_id"

  create_table "votes", force: true do |t|
    t.integer  "candidate_id"
    t.integer  "station_id"
    t.integer  "voters"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "votes", ["station_id"], name: "index_votes_on_station_id"

end
