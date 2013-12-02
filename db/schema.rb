# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20131202130726) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles_sections", force: true do |t|
    t.string   "title"
    t.text     "text"
    t.string   "link_text"
    t.integer  "language_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "articles_sections", ["language_id"], name: "index_articles_sections_on_language_id", using: :btree

  create_table "authorizations", force: true do |t|
    t.integer  "user_id"
    t.string   "provider"
    t.string   "uid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "authorizations", ["user_id"], name: "index_authorizations_on_user_id", using: :btree

  create_table "events_sections", force: true do |t|
    t.string   "title"
    t.text     "text"
    t.integer  "language_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "events_sections", ["language_id"], name: "index_events_sections_on_language_id", using: :btree

  create_table "hot_projects_sections", force: true do |t|
    t.string   "title"
    t.text     "text"
    t.string   "link_text"
    t.integer  "language_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "languages", force: true do |t|
    t.string   "name"
    t.string   "english_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "visible",      default: false
    t.string   "slug"
  end

  create_table "newsletter_languages", force: true do |t|
    t.string "language"
    t.string "mailchimp_id"
  end

  create_table "take_part_sections", force: true do |t|
    t.string   "main_title"
    t.text     "main_text"
    t.text     "link_text"
    t.string   "title1"
    t.text     "text1"
    t.string   "link1"
    t.string   "title2"
    t.text     "text2"
    t.string   "link2"
    t.string   "title3"
    t.text     "text3"
    t.string   "link3"
    t.integer  "language_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "take_part_sections", ["language_id"], name: "index_take_part_sections_on_language_id", using: :btree

  create_table "top_banners", force: true do |t|
    t.string   "title1"
    t.text     "text1"
    t.string   "title2"
    t.string   "text2"
    t.integer  "language_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "top_banners", ["language_id"], name: "index_top_banners_on_language_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "image"
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin",                  default: false, null: false
    t.text     "bio"
    t.string   "locale"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "what_is_sections", force: true do |t|
    t.text     "text1"
    t.text     "text2"
    t.text     "text3"
    t.text     "text4"
    t.integer  "language_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title1"
    t.string   "title2"
    t.string   "title3"
    t.string   "title4"
  end

  add_index "what_is_sections", ["language_id"], name: "index_what_is_sections_on_language_id", using: :btree

end
