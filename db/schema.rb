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

ActiveRecord::Schema.define(version: 20160524111803) do

  create_table "areas", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description"
    t.string   "image_file",  limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "region",      limit: 255
    t.string   "country",     limit: 255
  end

  create_table "base_contracts", force: :cascade do |t|
    t.integer  "paragraph_number"
    t.text     "paragraph"
    t.string   "language",         limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "collections", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description"
    t.string   "image_file",  limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contracts", force: :cascade do |t|
    t.string   "year",          limit: 255
    t.date     "start_date"
    t.date     "end_date"
    t.decimal  "commission"
    t.string   "currency",      limit: 255
    t.text     "contract"
    t.text     "payment_terms"
    t.string   "week_start",    limit: 255
    t.integer  "villa_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "contracts", ["villa_id"], name: "index_contracts_on_villa_id"

  create_table "featureds", force: :cascade do |t|
    t.integer  "villa_id"
    t.integer  "feature_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "featureds", ["feature_id"], name: "index_featureds_on_feature_id"
  add_index "featureds", ["villa_id"], name: "index_featureds_on_villa_id"

  create_table "features", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "owners", force: :cascade do |t|
    t.string   "title",         limit: 255
    t.string   "name",          limit: 255
    t.string   "surname",       limit: 255
    t.string   "company",       limit: 255
    t.text     "address"
    t.string   "postcode",      limit: 255
    t.string   "country",       limit: 255
    t.string   "phone",         limit: 255
    t.string   "mobile",        limit: 255
    t.string   "email",         limit: 255
    t.string   "language",      limit: 255
    t.text     "notes"
    t.text     "private_notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rates", force: :cascade do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.string   "name",        limit: 255
    t.decimal  "net"
    t.integer  "contract_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rates", ["contract_id"], name: "index_rates_on_contract_id"

  create_table "types", force: :cascade do |t|
    t.integer  "villa_id"
    t.integer  "collection_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "types", ["collection_id"], name: "index_types_on_collection_id"
  add_index "types", ["villa_id"], name: "index_types_on_villa_id"

  create_table "users", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.string   "email",           limit: 255
    t.string   "password_digest", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "villa_features", force: :cascade do |t|
    t.integer  "villa_id"
    t.integer  "feature_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "villa_features", ["feature_id"], name: "index_villa_features_on_feature_id"
  add_index "villa_features", ["villa_id"], name: "index_villa_features_on_villa_id"

  create_table "villas", force: :cascade do |t|
    t.string   "name",               limit: 255
    t.integer  "reference"
    t.string   "address",            limit: 255
    t.text     "strapline"
    t.text     "description"
    t.string   "image_file_name",    limit: 255
    t.integer  "sleeps"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "area_id"
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "owner_id"
    t.string   "original_name",      limit: 255
    t.text     "accommodation"
    t.text     "around_the_villa"
    t.integer  "number_of_bedrooms"
    t.text     "bed_and_bathrooms"
    t.string   "rental_day",         limit: 255
    t.string   "slug"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "villas", ["area_id"], name: "index_villas_on_area_id"
  add_index "villas", ["owner_id"], name: "index_villas_on_owner_id"

end
