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

ActiveRecord::Schema.define(version: 20141003175130) do

  create_table "chapters", force: true do |t|
    t.string   "name"
    t.integer  "rule_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "combos", force: true do |t|
    t.integer  "sitting_id"
    t.integer  "rule_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hints", force: true do |t|
    t.text     "body"
    t.text     "explanation"
    t.integer  "rule_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "image2_file_name"
    t.string   "image2_content_type"
    t.integer  "image2_file_size"
    t.datetime "image2_updated_at"
  end

  create_table "questions", force: true do |t|
    t.text     "body"
    t.text     "answer"
    t.integer  "rule_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "image2_file_name"
    t.string   "image2_content_type"
    t.integer  "image2_file_size"
    t.datetime "image2_updated_at"
  end

  create_table "rules", force: true do |t|
    t.string   "name"
    t.string   "subject"
    t.integer  "session_id"
    t.integer  "hint_id"
    t.integer  "question_id"
    t.integer  "trigger_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "chapter_id"
  end

  create_table "scores", force: true do |t|
    t.boolean  "test_type",  limit: 255
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.string   "month"
    t.string   "year"
    t.integer  "math"
    t.integer  "reading"
    t.integer  "writing"
    t.integer  "english"
    t.integer  "science"
    t.integer  "essay"
    t.text     "comment"
    t.boolean  "day"
    t.date     "taken_date"
  end

  create_table "sittings", force: true do |t|
    t.text     "comment"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "rule_id"
  end

  add_index "sittings", ["user_id"], name: "index_sittings_on_user_id"

  create_table "triggers", force: true do |t|
    t.text     "body"
    t.text     "explanation"
    t.integer  "rule_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "image2_file_name"
    t.string   "image2_content_type"
    t.integer  "image2_file_size"
    t.datetime "image2_updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "firstname"
    t.string   "lastname"
    t.boolean  "admin"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
