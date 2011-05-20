# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110520131209) do

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "departments", :force => true do |t|
    t.string   "name"
    t.string   "roomno"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", :force => true do |t|
    t.string   "name"
    t.string   "itemcode"
    t.string   "serialno"
    t.text     "remarks"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "category_id"
    t.integer  "status_id"
    t.integer  "person_id"
  end

  add_index "items", ["category_id"], :name => "index_items_on_category_id"
  add_index "items", ["person_id"], :name => "index_items_on_person_id"
  add_index "items", ["status_id"], :name => "index_items_on_status_id"

  create_table "people", :force => true do |t|
    t.string   "phone"
    t.string   "email"
    t.string   "position"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.integer  "department_id"
  end

  add_index "people", ["department_id"], :name => "index_people_on_department_id"

  create_table "problems", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "reported_by"
    t.string   "urgency"
    t.boolean  "resolved"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "requests", :force => true do |t|
    t.string   "name"
    t.string   "reason"
    t.date     "due_date"
    t.integer  "request_status"
    t.string   "requested_by"
    t.integer  "department"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "statuses", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.string   "remember_token"
    t.datetime "remember_token_expires_at"
    t.string   "name"
    t.string   "email_address"
    t.boolean  "administrator",                           :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "state",                                   :default => "active"
    t.datetime "key_timestamp"
  end

  add_index "users", ["state"], :name => "index_users_on_state"

end
