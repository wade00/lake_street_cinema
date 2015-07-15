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

ActiveRecord::Schema.define(version: 20150714195510) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "movies", force: :cascade do |t|
    t.string   "title"
    t.string   "year"
    t.string   "director"
    t.integer  "runtime"
    t.string   "genre"
    t.string   "rating"
    t.text     "synopsis"
    t.string   "image"
    t.integer  "theater_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "movies", ["theater_id"], name: "index_movies_on_theater_id", using: :btree

  create_table "orders", force: :cascade do |t|
    t.string   "email"
    t.string   "credit_card"
    t.integer  "theater_id"
    t.integer  "showtime_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "tickets"
    t.integer  "movie_id"
    t.string   "name"
    t.string   "card_expiration_month"
    t.string   "card_expiration_year"
    t.string   "street_address"
    t.string   "city"
    t.string   "state"
    t.string   "zip_code"
    t.string   "country"
  end

  add_index "orders", ["movie_id"], name: "index_orders_on_movie_id", using: :btree
  add_index "orders", ["showtime_id"], name: "index_orders_on_showtime_id", using: :btree
  add_index "orders", ["theater_id"], name: "index_orders_on_theater_id", using: :btree

  create_table "showtimes", force: :cascade do |t|
    t.time     "start_time"
    t.integer  "theater_id"
    t.integer  "movie_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "showtimes", ["movie_id"], name: "index_showtimes_on_movie_id", using: :btree
  add_index "showtimes", ["theater_id"], name: "index_showtimes_on_theater_id", using: :btree

  create_table "theaters", force: :cascade do |t|
    t.string   "number"
    t.integer  "capacity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "movies", "theaters"
  add_foreign_key "orders", "movies"
  add_foreign_key "orders", "showtimes"
  add_foreign_key "orders", "theaters"
  add_foreign_key "showtimes", "movies"
  add_foreign_key "showtimes", "theaters"
end
