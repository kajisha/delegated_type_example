# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_10_01_063236) do

  create_table "accountabilities", force: :cascade do |t|
    t.integer "accountability_type", null: false
    t.datetime "started_at", null: false
    t.datetime "ended_at", default: "9999-12-31 23:59:59", null: false
    t.integer "commissioner_id", null: false
    t.integer "responsible_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["commissioner_id"], name: "index_accountabilities_on_commissioner_id"
    t.index ["responsible_id"], name: "index_accountabilities_on_responsible_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "departments", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "parties", force: :cascade do |t|
    t.string "partyable_type", null: false
    t.integer "partyable_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["partyable_type", "partyable_id"], name: "index_parties_on_partyable_type_and_partyable_id"
  end

  add_foreign_key "accountabilities", "parties", column: "commissioner_id"
  add_foreign_key "accountabilities", "parties", column: "responsible_id"
end
