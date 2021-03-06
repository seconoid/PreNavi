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

ActiveRecord::Schema.define(version: 20170308155517) do

  create_table "appeals", force: :cascade do |t|
    t.string   "caption"
    t.string   "body"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

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
    t.string   "site_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "appeal"
    t.string   "devinfo"
    t.index ["student_id"], name: "index_products_on_student_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "client_id",     null: false
    t.integer  "student_id",    null: false
    t.integer  "plan_point"
    t.integer  "concept_point"
    t.integer  "impl_point"
    t.string   "comment"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["client_id"], name: "index_reviews_on_client_id"
    t.index ["student_id"], name: "index_reviews_on_student_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.integer  "no",         null: false
    t.integer  "col",        null: false
    t.integer  "row",        null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "s_class",      null: false
    t.integer  "s_code",       null: false
    t.integer  "s_no",         null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "user_id"
    t.string   "exhibit_code"
  end

  create_table "taggings", force: :cascade do |t|
    t.integer  "tag_id"
    t.string   "taggable_type"
    t.integer  "taggable_id"
    t.string   "tagger_type"
    t.integer  "tagger_id"
    t.string   "context",       limit: 128
    t.datetime "created_at"
    t.index ["context"], name: "index_taggings_on_context"
    t.index ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true
    t.index ["tag_id"], name: "index_taggings_on_tag_id"
    t.index ["taggable_id", "taggable_type", "context"], name: "index_taggings_on_taggable_id_and_taggable_type_and_context"
    t.index ["taggable_id", "taggable_type", "tagger_id", "context"], name: "taggings_idy"
    t.index ["taggable_id"], name: "index_taggings_on_taggable_id"
    t.index ["taggable_type"], name: "index_taggings_on_taggable_type"
    t.index ["tagger_id", "tagger_type"], name: "index_taggings_on_tagger_id_and_tagger_type"
    t.index ["tagger_id"], name: "index_taggings_on_tagger_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string  "name"
    t.integer "taggings_count", default: 0
    t.index ["name"], name: "index_tags_on_name", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",            null: false
    t.string   "email",           null: false
    t.string   "password_digest", null: false
    t.string   "image"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "user_attr",       null: false
  end

end
