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

ActiveRecord::Schema.define(version: 2020_09_07_001719) do

  create_table "departments", force: :cascade do |t|
    t.string "name"
    t.integer "department_id"
    t.integer "user_bike_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_bike_id"], name: "index_departments_on_user_bike_id"
  end

  create_table "programmers", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.string "email"
    t.string "programmer_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "project_managers", force: :cascade do |t|
    t.string "name"
    t.string "nick_name"
    t.string "dob"
    t.text "bio"
    t.integer "project_manager_id"
    t.integer "department_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["department_id"], name: "index_project_managers_on_department_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.string "budget"
    t.string "development_stage"
    t.integer "project_manager_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["project_manager_id"], name: "index_projects_on_project_manager_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "task_id"
    t.integer "project_id", null: false
    t.integer "programmer_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["programmer_id"], name: "index_tasks_on_programmer_id"
    t.index ["project_id"], name: "index_tasks_on_project_id"
  end

  create_table "user_bikes", force: :cascade do |t|
    t.string "name"
    t.string "motto"
    t.string "street"
    t.string "city"
    t.string "phone"
    t.integer "user_bike_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "departments", "user_bikes"
  add_foreign_key "project_managers", "departments"
  add_foreign_key "projects", "project_managers"
  add_foreign_key "tasks", "programmers"
  add_foreign_key "tasks", "projects"
end
