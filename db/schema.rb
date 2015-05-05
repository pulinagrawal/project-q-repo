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

ActiveRecord::Schema.define(version: 20150428004521) do

  create_table "categories", force: :cascade do |t|
    t.string   "category_name"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.date     "birthday"
    t.string   "password_digest"
    t.string   "email"
    t.integer  "reward_amount"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "remember_token"
  end

  add_index "profiles", ["remember_token"], name: "index_profiles_on_remember_token"

  create_table "questions", force: :cascade do |t|
    t.integer  "level"
    t.string   "correct_answer"
    t.string   "option1"
    t.string   "option2"
    t.string   "option3"
    t.string   "option4"
    t.string   "question"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "category_id"
    t.integer  "quiz_id"
    t.string   "category"
    t.string   "mediaurl"
  end

  add_index "questions", ["category_id"], name: "index_questions_on_category_id"
  add_index "questions", ["quiz_id"], name: "index_questions_on_quiz_id"

  create_table "quizzes", force: :cascade do |t|
    t.date     "end_date"
    t.date     "start_date"
    t.boolean  "correct1"
    t.boolean  "correct2"
    t.boolean  "correct3"
    t.boolean  "correct4"
    t.boolean  "correct5"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "profile_id"
    t.integer  "question1"
    t.integer  "question2"
    t.integer  "question3"
    t.integer  "question4"
    t.integer  "question5"
    t.integer  "user"
  end

  add_index "quizzes", ["profile_id"], name: "index_quizzes_on_profile_id"

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
