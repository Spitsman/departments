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

ActiveRecord::Schema.define(version: 2020_05_26_065408) do

  create_table "department_versions", force: :cascade do |t|
    t.integer "department_id"
    t.string "name"
    t.string "ancestry"
    t.datetime "active_since"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "departments", force: :cascade do |t|
    t.string "name"
    t.date "formed_at", null: false
    t.date "disbanded_at"
    t.string "ancestry"
  end

  create_table "employees", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "middle_name", null: false
    t.string "last_name", null: false
  end

  create_table "employments", force: :cascade do |t|
    t.integer "employee_id", null: false
    t.integer "department_id", null: false
    t.date "start_date", null: false
    t.date "end_date"
  end

end
