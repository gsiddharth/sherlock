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

ActiveRecord::Schema.define(version: 20140509190018) do

  create_table "addresses", force: true do |t|
    t.text     "description"
    t.integer  "city_id"
    t.integer  "pincode"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "addresses", ["city_id"], name: "index_addresses_on_city_id"

  create_table "cities", force: true do |t|
    t.string   "name"
    t.integer  "state_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cities", ["state_id"], name: "index_cities_on_state_id"

  create_table "countries", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "exams", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "generated_questions", force: true do |t|
    t.integer  "question_id"
    t.string   "variable_values"
    t.text     "description"
    t.string   "option1"
    t.string   "option2"
    t.string   "option3"
    t.string   "option4"
    t.string   "option5"
    t.string   "right_option"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "generated_questions", ["question_id"], name: "index_generated_questions_on_question_id"

  create_table "guardian_to_users", force: true do |t|
    t.integer  "user_id"
    t.integer  "guardian_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "guardian_to_users", ["guardian_id"], name: "index_guardian_to_users_on_guardian_id"
  add_index "guardian_to_users", ["user_id"], name: "index_guardian_to_users_on_user_id"

  create_table "question_solutions", force: true do |t|
    t.integer  "question_id"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "question_solutions", ["question_id"], name: "index_question_solutions_on_question_id"

  create_table "questions", force: true do |t|
    t.integer  "difficulty_level"
    t.string   "variables"
    t.text     "description"
    t.string   "option1"
    t.string   "option2"
    t.string   "option3"
    t.string   "option4"
    t.string   "option5"
    t.string   "right_option"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questions_to_topics", force: true do |t|
    t.integer  "topic_id"
    t.integer  "question_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "questions_to_topics", ["question_id"], name: "index_questions_to_topics_on_question_id"
  add_index "questions_to_topics", ["topic_id"], name: "index_questions_to_topics_on_topic_id"

  create_table "states", force: true do |t|
    t.string   "name"
    t.integer  "country_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "states", ["country_id"], name: "index_states_on_country_id"

  create_table "subjects", force: true do |t|
    t.string   "name"
    t.integer  "exam_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "subjects", ["exam_id"], name: "index_subjects_on_exam_id"

  create_table "topics", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_answers", force: true do |t|
    t.integer  "user_id"
    t.integer  "generated_question_id"
    t.string   "marked_option"
    t.boolean  "iscorrect"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_answers", ["generated_question_id"], name: "index_user_answers_on_generated_question_id"
  add_index "user_answers", ["user_id"], name: "index_user_answers_on_user_id"

  create_table "user_profiles", force: true do |t|
    t.string   "user_type"
    t.integer  "user_id"
    t.string   "first_name"
    t.string   "last_name"
    t.date     "dob"
    t.string   "profile_photo"
    t.string   "gender"
    t.integer  "address_id"
    t.string   "mobile_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_profiles", ["address_id"], name: "index_user_profiles_on_address_id"
  add_index "user_profiles", ["user_id"], name: "index_user_profiles_on_user_id"

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
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "provider"
    t.string   "uid"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
