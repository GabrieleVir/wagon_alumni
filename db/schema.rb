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

ActiveRecord::Schema.define(version: 20171218102616) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "pg_trgm"
  enable_extension "unaccent"

  create_table "admins", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_admins_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree
  end

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

  create_table "batches_meta_tags", id: false, force: :cascade do |t|
    t.integer "batch_id"
    t.integer "meta_tag_id"
    t.index ["batch_id"], name: "index_batches_meta_tags_on_batch_id", using: :btree
    t.index ["meta_tag_id"], name: "index_batches_meta_tags_on_meta_tag_id", using: :btree
  end

  create_table "meta_tags", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "meta_tags_projects", id: false, force: :cascade do |t|
    t.integer "project_id"
    t.integer "meta_tag_id"
    t.index ["meta_tag_id"], name: "index_meta_tags_projects_on_meta_tag_id", using: :btree
    t.index ["project_id"], name: "index_meta_tags_projects_on_project_id", using: :btree
  end

  create_table "pg_search_documents", force: :cascade do |t|
    t.text     "content"
    t.string   "searchable_type"
    t.integer  "searchable_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["searchable_type", "searchable_id"], name: "index_pg_search_documents_on_searchable_type_and_searchable_id", using: :btree
  end

  create_table "projects", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "description_fr"
    t.string   "description_nl"
    t.string   "description_de"
    t.string   "project_url"
  end

  create_table "students", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "github_url"
    t.string   "portfolio_url"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.integer  "batch_id"
    t.integer  "project_id"
    t.string   "picture"
    t.boolean  "fake",          default: false
    t.index ["batch_id"], name: "index_students_on_batch_id", using: :btree
    t.index ["project_id"], name: "index_students_on_project_id", using: :btree
  end

  add_foreign_key "students", "batches"
  add_foreign_key "students", "projects"
end
