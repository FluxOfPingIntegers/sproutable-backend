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

ActiveRecord::Schema.define(version: 2021_11_30_151018) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "carts", force: :cascade do |t|
    t.string "name"
    t.boolean "ordered"
    t.integer "total"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "events", force: :cascade do |t|
    t.integer "usda_id"
    t.string "yelp_id"
    t.string "name"
    t.string "description"
    t.string "address"
    t.string "zipcode"
    t.string "hours"
    t.string "fee"
    t.string "pass"
    t.string "date"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "location_id"
    t.index ["location_id"], name: "index_events_on_location_id"
  end

  create_table "images", force: :cascade do |t|
    t.string "image_list"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.string "description"
    t.string "image"
    t.integer "price"
    t.integer "quantity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "stall_id"
    t.bigint "product_id"
    t.bigint "cart_id"
    t.bigint "order_id"
    t.index ["cart_id"], name: "index_items_on_cart_id"
    t.index ["order_id"], name: "index_items_on_order_id"
    t.index ["product_id"], name: "index_items_on_product_id"
    t.index ["stall_id"], name: "index_items_on_stall_id"
  end

  create_table "locations", force: :cascade do |t|
    t.integer "usda_id"
    t.string "yelp_id"
    t.string "name"
    t.string "description"
    t.string "address"
    t.string "zipcode"
    t.string "hours"
    t.integer "fee"
    t.integer "pass"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer "total"
    t.string "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.string "description"
    t.string "image"
    t.integer "price"
    t.integer "quantity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "stalls", force: :cascade do |t|
    t.bigint "vendor_id"
    t.bigint "event_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["event_id"], name: "index_stalls_on_event_id"
    t.index ["vendor_id"], name: "index_stalls_on_vendor_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.string "image"
    t.integer "zipcode"
    t.string "venmoname"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "vendors", force: :cascade do |t|
    t.string "username"
    t.string "name"
    t.string "email"
    t.string "image"
    t.integer "zipcode"
    t.string "venmoname"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.string "website"
    t.index ["user_id"], name: "index_vendors_on_user_id"
  end

  add_foreign_key "events", "locations"
  add_foreign_key "items", "carts"
  add_foreign_key "items", "orders"
  add_foreign_key "items", "products"
  add_foreign_key "items", "stalls"
  add_foreign_key "vendors", "users"
end
