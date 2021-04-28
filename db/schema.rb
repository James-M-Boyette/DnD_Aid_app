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

ActiveRecord::Schema.define(version: 2021_04_28_011219) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alignments", force: :cascade do |t|
    t.string "name"
    t.string "abbreviation"
    t.string "desc"
    t.string "imgurl"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "characters", force: :cascade do |t|
    t.string "userid"
    t.string "cfirstname"
    t.string "cmiddlename"
    t.string "clastname"
    t.string "raceid"
    t.string "classid"
    t.string "alignmentid"
    t.string "languageid"
    t.string "inventoryid"
    t.integer "strength"
    t.integer "dexterity"
    t.integer "constitution"
    t.integer "intelligence"
    t.integer "wisdom"
    t.integer "charisma"
    t.integer "healthmax"
    t.integer "healthcurrent"
    t.integer "healthtemp"
    t.integer "speed"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "origin_story"
  end

  create_table "images", force: :cascade do |t|
    t.string "image_id"
    t.string "image_name"
    t.string "image_path"
    t.string "image_size"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "image_obj"
  end

  create_table "languages", force: :cascade do |t|
    t.string "name"
    t.string "desc"
    t.string "rarity"
    t.string "speakers"
    t.string "script"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "ufirstname"
    t.string "ulastname"
    t.string "email"
    t.string "userid"
    t.string "characterid"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
