# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_12_04_140759) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string "building"
    t.string "first_line"
    t.string "second_line"
    t.string "city"
    t.string "post_code"
    t.string "county"
    t.string "country"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cuisines", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cuisines_eateries", id: false, force: :cascade do |t|
    t.bigint "eatery_id", null: false
    t.bigint "cuisine_id", null: false
  end

  create_table "eateries", force: :cascade do |t|
    t.string "name"
    t.string "type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "address_id", null: false
    t.text "description"
    t.index ["address_id"], name: "index_eateries_on_address_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.text "content"
    t.integer "gluten_free_range"
    t.integer "value"
    t.integer "service"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "eatery_id", null: false
    t.index ["eatery_id"], name: "index_reviews_on_eatery_id"
  end

  add_foreign_key "eateries", "addresses"
  add_foreign_key "reviews", "eateries"
end
