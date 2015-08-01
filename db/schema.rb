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

ActiveRecord::Schema.define(version: 20150801202810) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "deals", force: :cascade do |t|
    t.string   "url"
    t.string   "title"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.integer  "user_id"
    t.integer  "retail_price_cents"
    t.integer  "wholesale_price_cents"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "delivery_method"
    t.datetime "deal_expiration"
    t.integer  "minimum_bids"
    t.integer  "total_bids"
    t.date     "estimated_delivery"
  end

  add_index "deals", ["user_id"], name: "index_deals_on_user_id", using: :btree

  create_table "orders", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "deal_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "shipping_address1"
    t.string   "shipping_address2"
    t.string   "city"
    t.string   "state"
    t.string   "cc_info"
    t.string   "zipcode"
  end

  add_index "orders", ["deal_id"], name: "index_orders_on_deal_id", using: :btree
  add_index "orders", ["user_id"], name: "index_orders_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.string   "remember_digest"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address2"
    t.string   "name_on_card"
    t.string   "card_number"
    t.string   "expiration_date"
    t.string   "billing_zip"
  end

  add_index "users", ["email"], name: "index_users_on_email", using: :btree

  add_foreign_key "deals", "users"
  add_foreign_key "orders", "deals"
  add_foreign_key "orders", "users"
end
