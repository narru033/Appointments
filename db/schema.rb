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

ActiveRecord::Schema.define(version: 20150501044603) do

  create_table "appointments", force: :cascade do |t|
    t.date     "date_of_visit"
    t.string   "pet_name"
    t.integer  "customer_id"
    t.date     "requires_reminder_of_appointment"
    t.text     "reason_for_visit"
    t.integer  "doctor_id"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.integer  "pet_id"
  end

  add_index "appointments", ["doctor_id"], name: "index_appointments_on_doctor_id"
  add_index "appointments", ["pet_id"], name: "index_appointments_on_pet_id"

  create_table "doctors", force: :cascade do |t|
    t.string   "name",                        null: false
    t.text     "address"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.string   "school_received_degree_from"
    t.integer  "years_in_practice"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "pets", force: :cascade do |t|
    t.string   "name_of_pet"
    t.string   "type_of_pet"
    t.text     "breed"
    t.integer  "age"
    t.float    "weight"
    t.date     "date_of_last_visit"
    t.integer  "customer_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "role"
    t.string   "username"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
