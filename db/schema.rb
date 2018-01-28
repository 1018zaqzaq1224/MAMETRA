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

ActiveRecord::Schema.define(version: 20180127113910) do

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "art_images", force: :cascade do |t|
    t.integer "art_id"
    t.string "image_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "image_id"
  end

  create_table "arts", force: :cascade do |t|
    t.string "event_name"
    t.string "artist_name"
    t.date "start_date"
    t.date "end_date"
    t.text "event_info"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "delis", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genres", force: :cascade do |t|
    t.string "genre_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "homes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.integer "snap_id"
    t.integer "genre_id"
    t.string "item_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_images", force: :cascade do |t|
    t.integer "product_id"
    t.string "image_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "image_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "product_name"
    t.integer "price"
    t.string "gender"
    t.string "size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "statuss", default: 0
  end

  create_table "snap_images", force: :cascade do |t|
    t.integer "snap_id"
    t.string "image_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "image_id"
  end

  create_table "snaps", force: :cascade do |t|
    t.string "snap_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
