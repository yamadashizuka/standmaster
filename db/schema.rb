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

ActiveRecord::Schema.define(version: 20140725055551) do

  create_table "add_inspection_id_to_enginerooms", force: true do |t|
    t.integer  "inspection_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "add_inspection_id_to_enginerooms2", force: true do |t|
    t.integer  "inspection_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "chasses", force: true do |t|
    t.string   "tire"
    t.string   "wheel"
    t.integer  "inspection_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "enginerooms", force: true do |t|
    t.integer  "noise_id"
    t.integer  "oilcolor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "inspection_id"
  end

  create_table "inspections", force: true do |t|
    t.string   "mechanic"
    t.text     "memo"
    t.integer  "visit_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "memberscars", force: true do |t|
    t.string   "numberplate"
    t.string   "automaker"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "visits", force: true do |t|
    t.string   "when"
    t.integer  "gas"
    t.integer  "odometer"
    t.text     "memo"
    t.integer  "memberscar_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
