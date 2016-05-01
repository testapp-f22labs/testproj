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

ActiveRecord::Schema.define(version: 20160501153901) do

  create_table "profiles", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.string   "company"
    t.string   "pan_no"
    t.string   "address"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "profiles", ["user_id"], name: "index_profiles_on_user_id"

  create_table "rooms", force: :cascade do |t|
    t.string   "office_type"
    t.string   "accomodate"
    t.string   "no_of_seats"
    t.string   "no_of_additional_rooms"
    t.boolean  "isfeature"
    t.string   "location"
    t.string   "listing_name"
    t.string   "listing_summary"
    t.string   "listing_address"
    t.string   "photo"
    t.boolean  "isinternet"
    t.boolean  "iscanteen"
    t.boolean  "issportsroom"
    t.boolean  "ismediation"
    t.boolean  "isparking"
    t.boolean  "ispowerbackup"
    t.boolean  "isauditorium"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "provider",   null: false
    t.string   "uid",        null: false
    t.string   "name"
    t.string   "location"
    t.string   "image_url"
    t.string   "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "users", ["provider", "uid"], name: "index_users_on_provider_and_uid", unique: true

end
