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

ActiveRecord::Schema.define(version: 20170727075304) do

  create_table "bookings", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "event_id"
    t.integer  "ticketagency_id"
    t.string   "booking_displayname"
    t.string   "condition"
    t.string   "detail"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["event_id"], name: "index_bookings_on_event_id", using: :btree
    t.index ["ticketagency_id"], name: "index_bookings_on_ticketagency_id", using: :btree
  end

  create_table "events", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "basename"
    t.string   "agencies"
    t.datetime "latest_update"
    t.datetime "startdate"
    t.datetime "enddate"
    t.integer  "price"
    t.integer  "availability"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "ticketagencies", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "bookings", "events"
  add_foreign_key "bookings", "ticketagencies"
end
