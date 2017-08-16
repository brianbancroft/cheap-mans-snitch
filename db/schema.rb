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

ActiveRecord::Schema.define(version: 20170816131824) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "checkin", force: :cascade do |t|
    t.bigint "scheduler_tasks_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["scheduler_tasks_id"], name: "index_checkin_on_scheduler_tasks_id"
  end

  create_table "scheduler_tasks", force: :cascade do |t|
    t.string "task"
    t.string "interval"
    t.string "environment"
    t.datetime "last_checkin"
    t.boolean "sent_warning"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
