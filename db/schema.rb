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

ActiveRecord::Schema.define(version: 20140402005211) do

  create_table "enum_people", force: true do |t|
    t.integer  "greeting"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "module_people", force: true do |t|
    t.integer  "greeting_id"
    t.string   "greeting_other"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "table_greetings", force: true do |t|
    t.string   "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "table_people", force: true do |t|
    t.integer  "table_greeting_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "table_people", ["table_greeting_id"], name: "index_table_people_on_table_greeting_id"

end
