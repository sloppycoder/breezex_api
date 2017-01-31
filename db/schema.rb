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

ActiveRecord::Schema.define(version: 20170131064335) do

  create_table "casa_accounts", force: :cascade do |t|
    t.string   "account_no"
    t.string   "product_code", limit: 10
    t.string   "product_desc"
    t.string   "currency",     limit: 3
    t.decimal  "bal",                     precision: 8, scale: 2, default: "0.0"
    t.decimal  "avail_bal",               precision: 8, scale: 2, default: "0.0"
    t.datetime "created_at",                                                      null: false
    t.datetime "updated_at",                                                      null: false
    t.integer  "customer_id"
    t.index ["customer_id"], name: "index_casa_accounts_on_customer_id"
  end

  create_table "credit_cards", force: :cascade do |t|
    t.string   "account_no"
    t.date     "due_date"
    t.string   "product_code",  limit: 10
    t.string   "product_desc"
    t.string   "currency",      limit: 3
    t.decimal  "bal",                      precision: 8, scale: 2, default: "0.0"
    t.decimal  "avail_credit",             precision: 8, scale: 2, default: "0.0"
    t.decimal  "last_stmt_bal",            precision: 8, scale: 2, default: "0.0"
    t.decimal  "credit_limit",             precision: 8, scale: 2, default: "0.0"
    t.datetime "created_at",                                                       null: false
    t.datetime "updated_at",                                                       null: false
    t.integer  "customer_id"
    t.index ["customer_id"], name: "index_credit_cards_on_customer_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string   "rel_id"
    t.string   "name"
    t.integer  "segment",              default: 0
    t.string   "country",    limit: 2
    t.boolean  "active",               default: true
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  create_table "transactions", force: :cascade do |t|
    t.date     "trx_date"
    t.string   "memo"
    t.decimal  "withdrawl_amount",           precision: 8, scale: 2
    t.decimal  "deposit_amount",             precision: 8, scale: 2
    t.string   "currency",         limit: 3
    t.decimal  "bal",                        precision: 8, scale: 2
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
    t.integer  "casa_account_id"
    t.index ["casa_account_id"], name: "index_transactions_on_casa_account_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "user_id"
    t.string   "name"
    t.string   "email"
    t.datetime "last_access"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "customer_id"
    t.index ["customer_id"], name: "index_users_on_customer_id"
  end

end
