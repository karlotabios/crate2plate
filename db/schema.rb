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

ActiveRecord::Schema.define(version: 20170502164510) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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
    t.string   "email"
    t.string   "username"
    t.string   "password"
    t.string   "business_name"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "deliveries", force: :cascade do |t|
    t.datetime "date_delivered"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "order_lines", force: :cascade do |t|
    t.decimal  "subtotal_amount"
    t.decimal  "quantity"
    t.integer  "product_id"
    t.integer  "order_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "orders_id"
    t.integer  "products_id"
    t.index ["order_id"], name: "index_order_lines_on_order_id", using: :btree
    t.index ["orders_id"], name: "index_order_lines_on_orders_id", using: :btree
    t.index ["product_id"], name: "index_order_lines_on_product_id", using: :btree
    t.index ["products_id"], name: "index_order_lines_on_products_id", using: :btree
  end

  create_table "orders", force: :cascade do |t|
    t.decimal  "amount_due"
    t.string   "mode_of_payment"
    t.string   "status"
    t.datetime "date_ordered"
    t.string   "comments"
    t.integer  "account_id"
    t.integer  "delivery_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "accounts_id"
    t.index ["account_id"], name: "index_orders_on_account_id", using: :btree
    t.index ["accounts_id"], name: "index_orders_on_accounts_id", using: :btree
    t.index ["delivery_id"], name: "index_orders_on_delivery_id", using: :btree
  end

  create_table "payment_histories", force: :cascade do |t|
    t.decimal  "amount_of_payment"
    t.datetime "date_settled"
    t.integer  "order_id"
    t.integer  "account_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "orders_id"
    t.integer  "accounts_id"
    t.index ["account_id"], name: "index_payment_histories_on_account_id", using: :btree
    t.index ["accounts_id"], name: "index_payment_histories_on_accounts_id", using: :btree
    t.index ["order_id"], name: "index_payment_histories_on_order_id", using: :btree
    t.index ["orders_id"], name: "index_payment_histories_on_orders_id", using: :btree
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
    t.integer  "order_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "orders_id"
    t.index ["order_id"], name: "index_receipts_on_order_id", using: :btree
    t.index ["orders_id"], name: "index_receipts_on_orders_id", using: :btree
  end

  create_table "supplies", force: :cascade do |t|
    t.string   "quantity"
    t.datetime "date_of_supply"
    t.integer  "product_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "products_id"
    t.index ["product_id"], name: "index_supplies_on_product_id", using: :btree
    t.index ["products_id"], name: "index_supplies_on_products_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                            default: "", null: false
    t.string   "encrypted_password",               default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                    default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                                    null: false
    t.datetime "updated_at",                                    null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone_number"
    t.string   "billing_unit_number"
    t.string   "billing_street"
    t.string   "billing_village"
    t.string   "billing_building"
    t.string   "billing_landmark"
    t.string   "billing_city"
    t.string   "delivery_unit_number"
    t.string   "delivery_street"
    t.string   "delivery_village"
    t.string   "delivery_building"
    t.string   "delivery_landmark"
    t.string   "delivery_city"
    t.decimal  "outstanding_balance"
    t.string   "account_type",           limit: 1
    t.string   "business_name"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "order_lines", "orders", column: "orders_id"
  add_foreign_key "order_lines", "products", column: "products_id"
  add_foreign_key "orders", "accounts", column: "accounts_id"
  add_foreign_key "payment_histories", "accounts", column: "accounts_id"
  add_foreign_key "payment_histories", "orders", column: "orders_id"
  add_foreign_key "receipts", "orders", column: "orders_id"
  add_foreign_key "supplies", "products", column: "products_id"
end
