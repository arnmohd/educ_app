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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20141023181827) do

  create_table "chapters", :force => true do |t|
    t.string   "name"
    t.integer  "course_id"
    t.integer  "syllabus_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "chapters", ["course_id", "syllabus_id"], :name => "index_chapters_on_course_id_and_syllabus_id"

  create_table "courses", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "headers", :force => true do |t|
    t.string   "heading"
    t.integer  "course_id"
    t.integer  "syllabus_id"
    t.integer  "chapter_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "headers", ["course_id", "syllabus_id", "chapter_id"], :name => "index_headers_on_course_id_and_syllabus_id_and_chapter_id"

  create_table "institutions", :force => true do |t|
    t.string   "name"
    t.string   "address_line1"
    t.string   "address_line2"
    t.string   "phone_no"
    t.binary   "logo"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "people", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password"
    t.integer  "role_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "roles", :force => true do |t|
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "syllabuses", :force => true do |t|
    t.string   "name"
    t.integer  "course_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "syllabuses", ["course_id"], :name => "index_syllabuses_on_course_id"

  create_table "topics", :force => true do |t|
    t.text     "content"
    t.integer  "course_id"
    t.integer  "syllabus_id"
    t.integer  "chapter_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "header_id"
  end

  create_table "user_course_relations", :force => true do |t|
    t.integer  "user_id"
    t.integer  "course_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "user_course_relations", ["user_id"], :name => "index_user_course_relations_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "role_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "password_digest"
  end

end
