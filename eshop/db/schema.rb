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

ActiveRecord::Schema.define(version: 20160325023333) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "businesses", force: :cascade do |t|
    t.text     "company_name"
    t.text     "trading_name"
    t.text     "abn"
    t.text     "logo"
    t.text     "email"
    t.text     "phone"
    t.decimal  "tax_rate"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "line_items", force: :cascade do |t|
    t.integer  "quantity"
    t.decimal  "unit_cost"
    t.decimal  "unit_tax"
    t.integer  "order_id"
    t.integer  "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_statuses", force: :cascade do |t|
    t.date     "basket"
    t.date     "purchase"
    t.date     "payment"
    t.date     "shipped"
    t.date     "finalised"
    t.integer  "order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.text     "invoice_number"
    t.decimal  "total_cost"
    t.decimal  "total_tax"
    t.decimal  "discount_amount"
    t.integer  "user_id"
    t.integer  "order_status_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "products", force: :cascade do |t|
    t.text     "name"
    t.integer  "inventory"
    t.decimal  "unit_cost_price"
    t.text     "description"
    t.decimal  "price_regular"
    t.boolean  "tax_applies",     default: true
    t.decimal  "price_sale"
    t.boolean  "on_sale",         default: false
    t.integer  "business_id"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "users", force: :cascade do |t|
    t.text     "email"
    t.text     "password_digest"
    t.boolean  "admin",           default: false
    t.boolean  "master",          default: false
    t.text     "name"
    t.text     "phone"
    t.date     "birthday"
    t.integer  "reward_level"
    t.integer  "business_id"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

end
