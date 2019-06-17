# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_06_16_231659) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "games", force: :cascade do |t|
    t.string "title", null: false
    t.integer "min_players", limit: 2, null: false
    t.integer "max_players", limit: 2, null: false
    t.string "description", limit: 300
    t.string "external_link"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["max_players"], name: "index_games_on_max_players"
    t.index ["min_players"], name: "index_games_on_min_players"
    t.index ["title"], name: "index_games_on_title"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "display_name"
    t.string "password_digest", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
