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

ActiveRecord::Schema.define(version: 2021_04_03_220455) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "approvals", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "solution_suggestion_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["solution_suggestion_id"], name: "index_approvals_on_solution_suggestion_id"
    t.index ["user_id"], name: "index_approvals_on_user_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "category_name"
    t.text "category_definition"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_categories_on_user_id"
  end

  create_table "problems", force: :cascade do |t|
    t.string "problem_title"
    t.text "problem_explanation"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.bigint "category_id", null: false
    t.index ["category_id"], name: "index_problems_on_category_id"
    t.index ["user_id"], name: "index_problems_on_user_id"
  end

  create_table "scientific_facts", force: :cascade do |t|
    t.string "scientific_fact_title"
    t.string "scienctific_fact_definition"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.bigint "problem_id", null: false
    t.index ["problem_id"], name: "index_scientific_facts_on_problem_id"
    t.index ["user_id"], name: "index_scientific_facts_on_user_id"
  end

  create_table "social_facts", force: :cascade do |t|
    t.string "social_fact_title"
    t.string "social_fact_definition"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.bigint "problem_id", null: false
    t.index ["problem_id"], name: "index_social_facts_on_problem_id"
    t.index ["user_id"], name: "index_social_facts_on_user_id"
  end

  create_table "solution_suggestions", force: :cascade do |t|
    t.bigint "problem_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["problem_id"], name: "index_solution_suggestions_on_problem_id"
    t.index ["user_id"], name: "index_solution_suggestions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "fullname"
    t.string "email"
    t.string "avatar"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "approvals", "solution_suggestions"
  add_foreign_key "approvals", "users"
  add_foreign_key "categories", "users"
  add_foreign_key "problems", "categories"
  add_foreign_key "problems", "users"
  add_foreign_key "scientific_facts", "problems"
  add_foreign_key "scientific_facts", "users"
  add_foreign_key "social_facts", "problems"
  add_foreign_key "social_facts", "users"
  add_foreign_key "solution_suggestions", "problems"
  add_foreign_key "solution_suggestions", "users"
end
