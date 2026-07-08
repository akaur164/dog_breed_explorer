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

ActiveRecord::Schema[8.1].define(version: 2026_07_08_204450) do
  create_table "breed_temperaments", force: :cascade do |t|
    t.integer "breed_id", null: false
    t.datetime "created_at", null: false
    t.integer "temperament_id", null: false
    t.datetime "updated_at", null: false
    t.index ["breed_id"], name: "index_breed_temperaments_on_breed_id"
    t.index ["temperament_id"], name: "index_breed_temperaments_on_temperament_id"
  end

  create_table "breeds", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "demeanor_category"
    t.text "description"
    t.string "energy_category"
    t.string "grooming_category"
    t.integer "group_id", null: false
    t.integer "max_expectancy"
    t.float "max_height"
    t.float "max_weight"
    t.integer "min_expectancy"
    t.float "min_height"
    t.float "min_weight"
    t.string "name"
    t.integer "popularity"
    t.string "shedding_category"
    t.string "trainability_category"
    t.datetime "updated_at", null: false
    t.index ["group_id"], name: "index_breeds_on_group_id"
  end

  create_table "groups", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "name"
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "breed_id", null: false
    t.text "comment"
    t.datetime "created_at", null: false
    t.integer "rating"
    t.string "reviewer_name"
    t.datetime "updated_at", null: false
    t.index ["breed_id"], name: "index_reviews_on_breed_id"
  end

  create_table "temperaments", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "name"
    t.datetime "updated_at", null: false
  end

  add_foreign_key "breed_temperaments", "breeds"
  add_foreign_key "breed_temperaments", "temperaments"
  add_foreign_key "breeds", "groups"
  add_foreign_key "reviews", "breeds"
end
