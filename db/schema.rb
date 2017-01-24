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

ActiveRecord::Schema.define(version: 20170120032004) do

  create_table "clients", force: :cascade do |t|
    t.string   "c_id",       null: false
    t.string   "c_name",     null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  create_table "favorites", force: :cascade do |t|
    t.integer  "student_id", null: false
    t.integer  "client_id",  null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_favorites_on_client_id"
    t.index ["student_id"], name: "index_favorites_on_student_id"
  end

  create_table "products", force: :cascade do |t|
    t.integer  "student_id", null: false
    t.string   "name",       null: false
    t.string   "about",      null: false
    t.string   "image"
    t.string   "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_id"], name: "index_products_on_student_id"
  end

  create_table "students", force: :cascade do |t|
    t.string   "s_class",    null: false
    t.integer  "s_code",     null: false
    t.integer  "s_no",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.index ["s_code"], name: "index_students_on_s_code", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "email",      null: false
    t.string   "password",   null: false
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_attr",  null: false
  end

end
