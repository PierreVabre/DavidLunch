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

ActiveRecord::Schema.define(version: 20161215100133) do

  create_table "adresses", force: :cascade do |t|
    t.string  "title"
    t.text    "description"
    t.integer "price"
    t.boolean "credit_card"
    t.string  "time_to_go"
    t.integer "category_id"
    t.string  "latitude"
    t.string  "longitude"
    t.integer "subcategory_id"
    t.string  "price_detail"
    t.integer "distance"
    t.index ["category_id"], name: "index_adresses_on_category_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "parent"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "parent_id"
    t.string   "gif"
    t.index ["parent"], name: "index_categories_on_parent"
    t.index ["parent_id"], name: "index_categories_on_parent_id"
  end

  create_table "subcategories", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "category"
    t.string   "gif"
    t.index ["category"], name: "index_subcategories_on_category"
  end

  create_table "usecases", force: :cascade do |t|
    t.string   "title"
    t.string   "gif"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
