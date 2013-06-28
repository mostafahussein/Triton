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

ActiveRecord::Schema.define(:version => 20130629094039) do

  create_table "articles", :force => true do |t|
    t.string   "name"
    t.string   "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "user_id"
  end

  create_table "batches", :force => true do |t|
    t.string   "name"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string   "grading_type"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "school_id"
  end

  create_table "comments", :force => true do |t|
    t.integer  "article_id"
    t.string   "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "user_id"
  end

  add_index "comments", ["article_id"], :name => "index_comments_on_article_id"

  create_table "countries", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "guardians", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "relation"
    t.string   "email"
    t.string   "office_phone1"
    t.string   "office_phone2"
    t.string   "mobile_phone"
    t.string   "office_address_line1"
    t.string   "office_address_line2"
    t.string   "city"
    t.date     "dob"
    t.string   "occupation"
    t.string   "income"
    t.string   "education"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.integer  "country_id"
    t.integer  "user_id"
    t.integer  "school_id"
    t.integer  "student_id"
  end

  create_table "previous_details", :force => true do |t|
    t.integer  "student_id"
    t.string   "institution"
    t.date     "year"
    t.string   "course"
    t.string   "total_mark"
    t.integer  "school_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "schools", :force => true do |t|
    t.string   "name"
    t.string   "code"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "student_previous_data", :force => true do |t|
    t.integer  "student_id"
    t.string   "institution"
    t.date     "year"
    t.string   "course"
    t.string   "total_mark"
    t.integer  "school_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "student_previous_subject_marks", :force => true do |t|
    t.integer  "student_id"
    t.string   "subject"
    t.string   "mark"
    t.integer  "school_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "students", :force => true do |t|
    t.string   "admission_no"
    t.string   "class_roll_no"
    t.date     "admission_date"
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.date     "date_of_birth"
    t.string   "gender"
    t.string   "blood_group"
    t.string   "birth_place"
    t.string   "language"
    t.string   "religion"
    t.string   "address_line1"
    t.string   "address_line2"
    t.string   "city"
    t.string   "post_code"
    t.string   "phone1"
    t.string   "phone2"
    t.string   "email"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "country_id"
    t.integer  "user_id"
    t.integer  "school_id"
    t.integer  "nationality_id"
    t.text     "passport_number"
    t.boolean  "has_paid_fees"
    t.date     "enrollment_date"
    t.integer  "batch_id"
  end

  create_table "users", :force => true do |t|
    t.string   "user_name"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.boolean  "admin"
    t.boolean  "employee"
    t.boolean  "student"
    t.boolean  "parent"
  end

end
