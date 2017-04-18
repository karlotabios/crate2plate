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

ActiveRecord::Schema.define(version: 20170418112720) do

  create_table "accounts", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "phone_number"
    t.integer  "billing_unit_number"
    t.string   "billing_street"
    t.string   "billing_village"
    t.string   "billing_building"
    t.string   "billing_landmark"
    t.string   "billing_city"
    t.integer  "delivery_unit_number"
    t.string   "delivery_street"
    t.string   "delivery_village"
    t.string   "delivery_building"
    t.string   "delivery_landmark"
    t.string   "delivery_city"
    t.decimal  "outstanding_balance"
    t.string   "account_type"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "admins", force: :cascade do |t|
    t.string   "admin_email"
    t.string   "admin_username"
    t.string   "admin_password"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "businesses", force: :cascade do |t|
    t.string   "business_email"
    t.string   "business_name"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string   "customer_email"
    t.string   "customer_username"
    t.string   "customer_password"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "deliveries", force: :cascade do |t|
    t.datetime "date_delivered"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "order_lines", force: :cascade do |t|
    t.decimal  "subtotal_amount"
    t.decimal  "quantity"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "orders", force: :cascade do |t|
    t.decimal  "amount_due"
    t.string   "mode_of_payment"
    t.string   "status"
    t.datetime "date_ordered"
    t.string   "comments"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "payment_histories", force: :cascade do |t|
    t.decimal  "amount_of_payment"
    t.datetime "date_settled"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "product_name"
    t.string   "category"
    t.decimal  "price"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "receipts", force: :cascade do |t|
    t.decimal  "total_amount_due"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "supplies", force: :cascade do |t|
    t.string   "quantity"
    t.datetime "date_of_supply"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

end
