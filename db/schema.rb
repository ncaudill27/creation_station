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

ActiveRecord::Schema.define(version: 20200118045600) do

  create_table "characters", force: :cascade do |t|
    t.integer "user_id"
    t.string  "name"
    t.string  "hp"
    t.string  "str"
    t.string  "con"
    t.string  "dex"
    t.string  "int"
    t.string  "wis"
    t.string  "cha"
  end

  create_table "klasses", force: :cascade do |t|
    t.integer "character_id"
    t.string  "name"
    t.string  "url"
  end

  create_table "proficiencies", force: :cascade do |t|
    t.integer "klass_id"
    t.string  "name"
  end

  create_table "races", force: :cascade do |t|
    t.integer "character_id"
    t.string  "name"
  end

  create_table "skills", force: :cascade do |t|
    t.integer "klass_id"
    t.string  "name"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
  end

end
