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

ActiveRecord::Schema.define(version: 20171121091923) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "batches", force: :cascade do |t|
    t.date     "date_start"
    t.date     "date_end"
    t.integer  "previous_batch"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "next_batch"
    t.string   "picture"
    t.integer  "name"
  end

  create_table "projects", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "github_url"
    t.string   "portfolio_url"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "batch_id"
    t.integer  "project_id"
    t.string   "picture"
    t.index ["batch_id"], name: "index_students_on_batch_id", using: :btree
    t.index ["project_id"], name: "index_students_on_project_id", using: :btree
  end

  add_foreign_key "students", "batches"
  add_foreign_key "students", "projects"
end
