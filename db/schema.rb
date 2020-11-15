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

ActiveRecord::Schema.define(version: 2020_11_15_224359) do

  create_table "birth_controls", force: :cascade do |t|
    t.string "name"
    t.string "method"
    t.string "active_ingredient"
    t.string "dosage"
    t.string "hormone_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "generic_name"
  end

  create_table "review_side_effects", force: :cascade do |t|
    t.integer "review_id", null: false
    t.integer "side_effect_id", null: false
    t.index ["review_id"], name: "index_review_side_effects_on_review_id"
    t.index ["side_effect_id"], name: "index_review_side_effects_on_side_effect_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "rating"
    t.integer "user_id", null: false
    t.integer "birth_control_id", null: false
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["birth_control_id"], name: "index_reviews_on_birth_control_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "side_effects", force: :cascade do |t|
    t.string "name"
    t.integer "severity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "username"
    t.string "name"
    t.string "provider"
    t.string "uid"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "review_side_effects", "reviews"
  add_foreign_key "review_side_effects", "side_effects"
  add_foreign_key "reviews", "birth_controls"
  add_foreign_key "reviews", "users"
end
