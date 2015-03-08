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

ActiveRecord::Schema.define(version: 20150308132637) do

  create_table "addresses", force: :cascade do |t|
    t.string   "street_1"
    t.string   "street_2"
    t.string   "city"
    t.string   "province"
    t.string   "postal_code"
    t.string   "country"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "addressable_id"
    t.string   "addressable_type"
  end

  create_table "assignments", force: :cascade do |t|
    t.integer  "teacher_id"
    t.integer  "student_id"
    t.integer  "song_id"
    t.integer  "tempo"
    t.boolean  "is_recording_required"
    t.text     "notes"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "assignments", ["song_id"], name: "index_assignments_on_song_id"
  add_index "assignments", ["student_id"], name: "index_assignments_on_student_id"
  add_index "assignments", ["teacher_id"], name: "index_assignments_on_teacher_id"

  create_table "books", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.text     "notes"
    t.integer  "user_id"
    t.integer  "assignment_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "comments", ["assignment_id"], name: "index_comments_on_assignment_id"
  add_index "comments", ["user_id"], name: "index_comments_on_user_id"

  create_table "composers", force: :cascade do |t|
    t.string   "name"
    t.date     "dob"
    t.text     "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fellowships", force: :cascade do |t|
    t.integer  "school_id"
    t.integer  "teacher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean  "is_active"
  end

  add_index "fellowships", ["school_id"], name: "index_fellowships_on_school_id"
  add_index "fellowships", ["teacher_id"], name: "index_fellowships_on_teacher_id"

  create_table "identities", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "provider"
    t.string   "uid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "identities", ["user_id"], name: "index_identities_on_user_id"

  create_table "instruments", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.integer  "school_id"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "telephone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "locations", ["school_id"], name: "index_locations_on_school_id"

  create_table "mentorships", force: :cascade do |t|
    t.integer  "teacher_id"
    t.integer  "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date     "start_date"
    t.date     "end_date"
  end

  add_index "mentorships", ["student_id"], name: "index_mentorships_on_student_id"
  add_index "mentorships", ["teacher_id"], name: "index_mentorships_on_teacher_id"

  create_table "musicalities", force: :cascade do |t|
    t.integer  "teacher_id"
    t.integer  "instrument_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "musicalities", ["instrument_id"], name: "index_musicalities_on_instrument_id"
  add_index "musicalities", ["teacher_id"], name: "index_musicalities_on_teacher_id"

  create_table "parent_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parentages", force: :cascade do |t|
    t.integer  "parent_id"
    t.integer  "student_id"
    t.integer  "parent_type_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "parentages", ["parent_id"], name: "index_parentages_on_parent_id"
  add_index "parentages", ["parent_type_id"], name: "index_parentages_on_parent_type_id"
  add_index "parentages", ["student_id"], name: "index_parentages_on_student_id"

  create_table "parents", force: :cascade do |t|
    t.string   "name"
    t.string   "telephone"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schools", force: :cascade do |t|
    t.string   "name"
    t.string   "website"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "songs", force: :cascade do |t|
    t.integer  "book_id"
    t.integer  "start_page"
    t.integer  "end_page"
    t.string   "title"
    t.integer  "composer_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "name"
    t.date     "dob"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string   "name"
    t.string   "telephone"
    t.string   "email"
    t.text     "bio"
    t.text     "education"
    t.text     "honors"
    t.text     "experience"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
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
    t.string   "name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
