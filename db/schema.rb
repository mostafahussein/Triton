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

ActiveRecord::Schema.define(:version => 20131105173643) do

  create_table "assignments", :force => true do |t|
    t.integer  "user_id"
    t.integer  "role_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "batch_counselor_advisors", :force => true do |t|
    t.integer  "counselor_advisor_id"
    t.integer  "employee_department_id"
    t.integer  "batch_counselor_supervisor_id"
    t.integer  "student_class_id"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "batch_counselor_supervisors", :force => true do |t|
    t.integer  "counselor_supervisor_id"
    t.integer  "employee_department_id"
    t.integer  "counselor_batch_id"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  create_table "batch_leadership_leaders", :force => true do |t|
    t.integer  "leadership_leader_id"
    t.integer  "employee_department_id"
    t.integer  "batch_leadership_supervisor_id"
    t.integer  "student_class_id"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
  end

  create_table "batch_leadership_supervisors", :force => true do |t|
    t.integer  "leadership_supervisor_id"
    t.integer  "employee_department_id"
    t.integer  "leadership_batch_id"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "batches", :force => true do |t|
    t.string   "name"
    t.integer  "course_id"
    t.date     "started_on"
    t.date     "ended_on"
    t.boolean  "is_active",   :default => true
    t.boolean  "is_deleted",  :default => false
    t.string   "employee_id"
    t.string   "major"
    t.string   "school_year"
    t.string   "language"
    t.string   "batch_type"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
  end

  add_index "batches", ["is_deleted", "is_active", "course_id", "name"], :name => "index_batches_on_is_deleted_and_is_active_and_course_id_and_name"

  create_table "ckeditor_assets", :force => true do |t|
    t.string   "data_file_name",                  :null => false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    :limit => 30
    t.string   "type",              :limit => 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], :name => "idx_ckeditor_assetable"
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], :name => "idx_ckeditor_assetable_type"

  create_table "counselor_advisors", :force => true do |t|
    t.integer  "employee_id"
    t.integer  "employee_department_id"
    t.integer  "employee_position_id"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  create_table "counselor_batches", :force => true do |t|
    t.integer  "batch_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "counselor_supervisors", :force => true do |t|
    t.integer  "employee_id"
    t.integer  "employee_department_id"
    t.integer  "employee_position_id"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  create_table "countries", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "courses", :force => true do |t|
    t.string   "course_name"
    t.string   "course_department"
    t.string   "course_hours"
    t.string   "course_semester"
    t.string   "course_batch"
    t.string   "course_code"
    t.integer  "batch_id"
    t.integer  "employee_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "employee_departments", :force => true do |t|
    t.string   "name"
    t.string   "code"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "employee_positions", :force => true do |t|
    t.string   "position_title"
    t.integer  "employee_department_id"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  create_table "employees", :force => true do |t|
    t.string   "employee_number"
    t.date     "joining_date"
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.boolean  "gender"
    t.string   "job_title"
    t.integer  "employee_department_id"
    t.string   "qualification"
    t.text     "experience_detail"
    t.integer  "experience_year"
    t.integer  "experience_month"
    t.string   "status_description"
    t.date     "date_of_birth"
    t.string   "marital_status"
    t.integer  "children_count"
    t.string   "father_name"
    t.string   "mother_name"
    t.string   "husband_name"
    t.string   "blood_group"
    t.integer  "nationality_id"
    t.string   "home_address_line1"
    t.string   "home_address_line2"
    t.string   "home_city"
    t.string   "home_state"
    t.string   "home_pin_code"
    t.string   "office_address_line1"
    t.string   "office_address_line2"
    t.string   "office_city"
    t.string   "office_state"
    t.string   "office_pin_code"
    t.string   "office_phone1"
    t.string   "office_phone2"
    t.string   "mobile_phone"
    t.string   "home_phone"
    t.string   "email"
    t.string   "fax"
    t.integer  "user_id"
    t.integer  "school_id"
    t.integer  "employee_category_id"
    t.integer  "employee_position_id"
    t.integer  "reporting_manager_id"
    t.integer  "office_country_id"
    t.integer  "home_country_id"
    t.string   "employee_category"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  add_index "employees", ["employee_number"], :name => "index_employees_on_employee_number"

  create_table "events", :force => true do |t|
    t.date     "event_date"
    t.string   "event_name"
    t.string   "event_description"
    t.string   "event_place"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
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
    t.integer  "country_id"
    t.integer  "user_id"
    t.integer  "student_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "leadership_batches", :force => true do |t|
    t.integer  "batch_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "leadership_leaders", :force => true do |t|
    t.integer  "employee_id"
    t.integer  "employee_department_id"
    t.integer  "employee_position_id"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  create_table "leadership_supervisors", :force => true do |t|
    t.integer  "employee_id"
    t.integer  "employee_department_id"
    t.integer  "employee_position_id"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  create_table "messages", :force => true do |t|
    t.integer  "sender_id",                              :null => false
    t.integer  "recepient_id"
    t.boolean  "sender_deleted",    :default => false
    t.boolean  "recepient_deleted", :default => false
    t.string   "subject",                                :null => false
    t.text     "body"
    t.datetime "read_at"
    t.string   "container",         :default => "draft"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
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

  create_table "replies", :force => true do |t|
    t.string   "text"
    t.integer  "ticket_id"
    t.integer  "user_id"
    t.integer  "state_id"
    t.integer  "previous_state_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "roles", :force => true do |t|
    t.string   "role_name"
    t.string   "role_type"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "states", :force => true do |t|
    t.string   "name"
    t.string   "color"
    t.string   "background"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "student_classes", :force => true do |t|
    t.string   "name"
    t.integer  "batch_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "student_complaints", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "complaint_category"
    t.text     "complaint_description"
    t.text     "proposed_solution"
    t.integer  "employee_department_id"
    t.integer  "user_id"
    t.integer  "employee_id"
    t.integer  "batch_id"
    t.integer  "student_class_id"
    t.integer  "course_id"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
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
    t.integer  "country_id"
    t.integer  "user_id"
    t.integer  "nationality_id"
    t.text     "passport_number"
    t.boolean  "has_paid_fees"
    t.date     "enrollment_date"
    t.integer  "batch_id"
    t.integer  "student_class_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "ticket_knowledgebases", :force => true do |t|
    t.integer  "ticket_id"
    t.string   "base_question"
    t.string   "base_answer"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "tickets", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "user_id"
    t.integer  "employee_department_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.integer  "employee_id"
    t.string   "ticket_state"
    t.boolean  "assign_state",           :default => false
    t.datetime "due_date"
    t.integer  "batch_id"
    t.integer  "student_class_id"
    t.integer  "course_id"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.integer  "state_id"
  end

  add_index "tickets", ["state_id"], :name => "index_tickets_on_state_id"

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "failed_attempts",        :default => 0
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.string   "user_name"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "user_type"
    t.string   "about"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true
  add_index "users", ["unlock_token"], :name => "index_users_on_unlock_token", :unique => true

end
