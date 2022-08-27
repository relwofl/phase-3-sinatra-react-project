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

ActiveRecord::Schema.define(version: 2022_08_27_160528) do

  create_table "cows", force: :cascade do |t|
    t.string "name"
    t.integer "mother_id"
    t.index ["mother_id"], name: "index_cows_on_mother_id"
  end

  create_table "fields", force: :cascade do |t|
    t.string "farm"
    t.string "name"
    t.integer "cow_id"
    t.text "note"
  end

  add_foreign_key "cows", "cows", column: "mother_id"
end
