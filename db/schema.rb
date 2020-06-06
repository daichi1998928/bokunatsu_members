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

ActiveRecord::Schema.define(version: 2020_06_06_095256) do

  create_table "assign_schools", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "branches_members", force: :cascade do |t|
    t.integer "university_branch_id"
    t.integer "member_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "grades", force: :cascade do |t|
    t.integer "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "links", force: :cascade do |t|
    t.integer "member_id"
    t.string "name"
    t.text "url"
    t.boolean "is_bokunatsu"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "members", force: :cascade do |t|
    t.integer "title_of_branch_id"
    t.integer "university_id"
    t.integer "grade_id"
    t.integer "assign_school_id"
    t.string "name"
    t.string "name_kana"
    t.string "profile_image_id"
    t.string "nickname"
    t.string "faculty"
    t.text "history"
    t.text "deciding_factor"
    t.text "objective"
    t.text "episode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

  create_table "personalities", force: :cascade do |t|
    t.integer "member_id"
    t.string "content_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "title_of_branches", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "universities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "university_branches", force: :cascade do |t|
    t.string "name"
    t.text "twitter_link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
