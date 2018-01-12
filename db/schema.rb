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

ActiveRecord::Schema.define(version: 20180112140129) do

  create_table "purchase_infos", force: :cascade do |t|
    t.string   "purchaser_name",   limit: 255
    t.string   "item_description", limit: 255
    t.float    "item_price",       limit: 24
    t.integer  "purchase_count",   limit: 4
    t.string   "merchant_address", limit: 255
    t.string   "merchant_name",    limit: 255
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name",              limit: 40
    t.string   "authorizable_type", limit: 40
    t.integer  "authorizable_id",   limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles_users", id: false, force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.integer  "role_id",    limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",               limit: 255
    t.string   "login",              limit: 255
    t.string   "crypted_password",   limit: 255,             null: false
    t.string   "password_salt",      limit: 255,             null: false
    t.string   "persistence_token",  limit: 255,             null: false
    t.string   "perishable_token",   limit: 255,             null: false
    t.integer  "login_count",        limit: 4,   default: 0, null: false
    t.integer  "failed_login_count", limit: 4,   default: 0, null: false
    t.datetime "last_request_at"
    t.datetime "current_login_at"
    t.datetime "last_login_at"
    t.string   "current_login_ip",   limit: 255
    t.string   "last_login_ip",      limit: 255
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
  end

end
