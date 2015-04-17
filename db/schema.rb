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

ActiveRecord::Schema.define(version: 20150409061157) do

  create_table "addresses", force: :cascade do |t|
    t.string   "street_1",         limit: 255
    t.string   "street_2",         limit: 255
    t.string   "city",             limit: 255
    t.string   "province",         limit: 255
    t.string   "postal_code",      limit: 255
    t.string   "country",          limit: 255
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.integer  "addressable_id",   limit: 4
    t.string   "addressable_type", limit: 255
  end

  create_table "assignments", force: :cascade do |t|
    t.integer  "teacher_id",            limit: 4
    t.integer  "student_id",            limit: 4
    t.integer  "song_id",               limit: 4
    t.integer  "tempo",                 limit: 4
    t.boolean  "is_recording_required", limit: 1
    t.text     "notes",                 limit: 65535
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "assignments", ["song_id"], name: "index_assignments_on_song_id", using: :btree
  add_index "assignments", ["student_id"], name: "index_assignments_on_student_id", using: :btree
  add_index "assignments", ["teacher_id"], name: "index_assignments_on_teacher_id", using: :btree

  create_table "books", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "comments", force: :cascade do |t|
    t.text     "notes",         limit: 65535
    t.integer  "user_id",       limit: 4
    t.integer  "assignment_id", limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "comments", ["assignment_id"], name: "index_comments_on_assignment_id", using: :btree
  add_index "comments", ["user_id"], name: "index_comments_on_user_id", using: :btree

  create_table "composers", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.date     "dob"
    t.text     "bio",        limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "fellowships", force: :cascade do |t|
    t.integer  "school_id",  limit: 4
    t.integer  "teacher_id", limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.boolean  "is_active",  limit: 1
  end

  add_index "fellowships", ["school_id"], name: "index_fellowships_on_school_id", using: :btree
  add_index "fellowships", ["teacher_id"], name: "index_fellowships_on_teacher_id", using: :btree

  create_table "identities", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.string   "provider",   limit: 255
    t.string   "uid",        limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "identities", ["user_id"], name: "index_identities_on_user_id", using: :btree

  create_table "instruments", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "locations", force: :cascade do |t|
    t.integer  "school_id",  limit: 4
    t.string   "telephone",  limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "locations", ["school_id"], name: "index_locations_on_school_id", using: :btree

  create_table "mentorships", force: :cascade do |t|
    t.integer  "teacher_id", limit: 4
    t.integer  "student_id", limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.date     "start_date"
    t.date     "end_date"
  end

  add_index "mentorships", ["student_id"], name: "index_mentorships_on_student_id", using: :btree
  add_index "mentorships", ["teacher_id"], name: "index_mentorships_on_teacher_id", using: :btree

  create_table "musicalities", force: :cascade do |t|
    t.integer  "teacher_id",    limit: 4
    t.integer  "instrument_id", limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "musicalities", ["instrument_id"], name: "index_musicalities_on_instrument_id", using: :btree
  add_index "musicalities", ["teacher_id"], name: "index_musicalities_on_teacher_id", using: :btree

  create_table "parent_types", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "parentages", force: :cascade do |t|
    t.integer  "parent_id",      limit: 4
    t.integer  "student_id",     limit: 4
    t.integer  "parent_type_id", limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "parentages", ["parent_id"], name: "index_parentages_on_parent_id", using: :btree
  add_index "parentages", ["parent_type_id"], name: "index_parentages_on_parent_type_id", using: :btree
  add_index "parentages", ["student_id"], name: "index_parentages_on_student_id", using: :btree

  create_table "parents", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "telephone",  limit: 255
    t.string   "email",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "schools", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "website",    limit: 255
    t.string   "email",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "songs", force: :cascade do |t|
    t.integer  "book_id",     limit: 4
    t.integer  "start_page",  limit: 4
    t.integer  "end_page",    limit: 4
    t.string   "title",       limit: 255
    t.integer  "composer_id", limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.date     "dob"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "telephone",  limit: 255
    t.string   "email",      limit: 255
    t.text     "bio",        limit: 65535
    t.text     "education",  limit: 65535
    t.text     "honors",     limit: 65535
    t.text     "experience", limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "website",    limit: 255
    t.string   "firstname",  limit: 255
    t.string   "lastname",   limit: 255
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.string   "confirmation_token",     limit: 255
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email",      limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name",                   limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "assignments", "songs"
  add_foreign_key "assignments", "students"
  add_foreign_key "assignments", "teachers"
  add_foreign_key "comments", "assignments"
  add_foreign_key "comments", "users"
  add_foreign_key "fellowships", "schools"
  add_foreign_key "fellowships", "teachers"
  add_foreign_key "identities", "users"
  add_foreign_key "locations", "schools"
  add_foreign_key "mentorships", "students"
  add_foreign_key "mentorships", "teachers"
  add_foreign_key "musicalities", "instruments"
  add_foreign_key "musicalities", "teachers"
  add_foreign_key "parentages", "parent_types"
  add_foreign_key "parentages", "parents"
  add_foreign_key "parentages", "students"
end
