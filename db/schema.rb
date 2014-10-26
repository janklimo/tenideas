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

ActiveRecord::Schema.define(version: 20141026153930) do

  create_table "ideas", force: true do |t|
    t.integer  "user_id"
    t.integer  "recipient"
    t.string   "idea1",      limit: 120
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "idea2",      limit: 120
    t.string   "idea3",      limit: 120
    t.string   "idea4",      limit: 120
    t.string   "idea5",      limit: 120
    t.string   "idea6",      limit: 120
    t.string   "idea7",      limit: 120
    t.string   "idea8",      limit: 120
    t.string   "idea9",      limit: 120
    t.string   "idea10",     limit: 120
    t.boolean  "featured"
  end

  add_index "ideas", ["user_id"], name: "index_ideas_on_user_id"

  create_table "identities", force: true do |t|
    t.integer  "user_id"
    t.string   "provider"
    t.string   "uid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "identities", ["user_id"], name: "index_identities_on_user_id"

  create_table "users", force: true do |t|
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
    t.string   "name"
    t.string   "twitter_handle"
    t.string   "company"
    t.string   "url"
    t.string   "problem_definition"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
