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

ActiveRecord::Schema.define(version: 20171024100620) do

  create_table "study_program", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subject_assignments", force: :cascade do |t|
    t.integer "subject_id"
    t.integer "study_program_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["study_program_id"], name: "index_subject_assignments_on_study_program_id"
    t.index ["subject_id"], name: "index_subject_assignments_on_subject_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.string "title"
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tests", force: :cascade do |t|
    t.string "title"
    t.text "questions"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "subject_id"
    t.index ["subject_id"], name: "index_tests_on_subject_id"
  end

  create_table "topic_assignments", force: :cascade do |t|
    t.integer "test_id"
    t.integer "topic_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["test_id"], name: "index_topic_assignments_on_test_id"
    t.index ["topic_id"], name: "index_topic_assignments_on_topic_id"
  end

  create_table "topics", force: :cascade do |t|
    t.integer "subject_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subject_id"], name: "index_topics_on_subject_id"
  end

end
