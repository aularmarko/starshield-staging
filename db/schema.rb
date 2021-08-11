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

ActiveRecord::Schema.define(version: 2021_07_22_183702) do

  create_table "files", id: :integer, charset: "latin1", force: :cascade do |t|
    t.string "ak_file", default: "", null: false
    t.string "dwg_number", limit: 25, default: "", null: false
    t.index ["ak_file"], name: "akFile", unique: true
  end

  create_table "history", id: :integer, charset: "latin1", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.datetime "date", null: false
    t.integer "kit_id", default: 0, null: false
    t.column "status", "enum('failed','downloaded','cutting','complete')", default: "failed", null: false
    t.string "material", limit: 25, default: "0", null: false
    t.integer "user_id", default: 0, null: false
    t.string "vin", limit: 25
    t.boolean "scrap", default: false
  end

  create_table "kits", id: :integer, charset: "latin1", force: :cascade do |t|
    t.integer "file_resource_id", null: false
    t.integer "kit_type_id", null: false
    t.integer "model_id", default: 0, null: false
    t.integer "start_year", default: 0, null: false
    t.integer "end_year", default: 0, null: false
    t.string "trim", limit: 100
    t.string "trim_description", limit: 100
    t.text "notes"
    t.string "part_number", limit: 25, default: "", null: false
    t.integer "library_id", null: false
    t.boolean "view", default: true, null: false
  end

  create_table "kittypes", id: :integer, charset: "latin1", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.string "ak_type", limit: 1, default: "A", null: false
    t.string "kit_type", limit: 50, null: false
  end

  create_table "libraries", id: :integer, charset: "latin1", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.string "library", limit: 56, null: false
    t.text "description", null: false
  end

  create_table "makes", id: :integer, charset: "latin1", force: :cascade do |t|
    t.string "ak_make", limit: 25, default: "", null: false
    t.string "ak_make_id", limit: 3, default: "", null: false
    t.index ["ak_make"], name: "akMake", unique: true
  end

  create_table "models", id: :integer, charset: "latin1", force: :cascade do |t|
    t.integer "make_id", default: 0, null: false
    t.string "ak_model", limit: 25, default: "", null: false
  end

  create_table "users", id: :integer, charset: "latin1", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.string "username", limit: 25, default: "", null: false
    t.string "legacy_password", limit: 25, default: "", null: false
    t.string "email", limit: 40, default: "", null: false
    t.string "dongle_number", limit: 25, default: "0", null: false
    t.string "first_name", limit: 25, default: "", null: false
    t.string "last_name", limit: 25, default: "", null: false
    t.string "company_name", limit: 40, default: "", null: false
    t.text "address", null: false
    t.string "city", limit: 25, default: "", null: false
    t.string "state", limit: 40, default: "", null: false
    t.string "zip", limit: 25, default: "", null: false
    t.string "phone_number", limit: 25, default: "", null: false
    t.string "fax_number", limit: 25, default: "", null: false
    t.timestamp "created_at", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.boolean "admin", default: false, null: false
    t.boolean "skip_vin", default: false
    t.integer "library_id"
    t.string "encrypted_password", default: "", null: false
    t.boolean "super_admin", default: false
    t.boolean "kits_admin", default: false
    t.index ["username"], name: "username", unique: true
  end

end
