# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2025_05_10_054432) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "category"
    t.string "image"
    t.integer "seller_id"
    t.float "asking_price"
    t.float "og_purchase_price"
    t.string "address"
    t.string "status"
    t.integer "offers_count"
    t.integer "msg_chains_count"
    t.integer "reviews_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messages", force: :cascade do |t|
    t.integer "sender_id"
    t.integer "receiver_id"
    t.integer "chain_id"
    t.string "msg_text"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "msg_chains", force: :cascade do |t|
    t.integer "sender_id"
    t.integer "receiver_id"
    t.string "subject"
    t.integer "item_id"
    t.integer "messages_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "offers", force: :cascade do |t|
    t.integer "item_id"
    t.float "offer"
    t.string "notes"
    t.integer "submitter_id"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "rating"
    t.integer "author_id"
    t.integer "user_about_id"
    t.string "text"
    t.string "would_to_again"
    t.integer "item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sales", force: :cascade do |t|
    t.integer "item_id"
    t.integer "buyer_id"
    t.integer "seller_id"
    t.integer "accepted_offer_id"
    t.string "status"
    t.float "final_price"
    t.string "pu_location"
    t.datetime "pu_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "seller_status"
    t.string "buyer_status"
    t.string "address"
    t.string "verification"
    t.string "account_status"
    t.date "birthday"
    t.integer "items_count"
    t.integer "messages_count"
    t.integer "msg_chains_count"
    t.integer "offers_count"
    t.integer "reviews_count"
    t.integer "reviews_about_count"
    t.integer "sales_count"
    t.integer "sales_buyer_count"
    t.integer "messages_rcvd_count"
    t.integer "msg_chains_rcvd_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
