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

ActiveRecord::Schema.define(version: 20140925093558) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: true do |t|
    t.string   "category"
    t.string   "title"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "description"
  end

  create_table "players", force: true do |t|
    t.string   "refid"
    t.string   "name"
    t.string   "fullname"
    t.string   "nickname"
    t.string   "twitter"
    t.string   "born"
    t.string   "position"
    t.string   "shoots"
    t.integer  "htft"
    t.integer  "htin"
    t.integer  "weight"
    t.string   "bmonth"
    t.integer  "bday"
    t.integer  "byear"
    t.string   "bcity"
    t.string   "bstate"
    t.string   "bcountry"
    t.string   "hs"
    t.string   "hscity"
    t.string   "hsstate"
    t.string   "college"
    t.string   "draftteam"
    t.integer  "draftround"
    t.integer  "draftroundpick"
    t.integer  "draftoverall"
    t.integer  "draftyear"
    t.integer  "hofyear"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
