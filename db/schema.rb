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

ActiveRecord::Schema.define(version: 20160324222911) do

  create_table "areas", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "image_file"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "region"
    t.string   "country"
  end

  create_table "collections", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "image_file"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "featureds", force: true do |t|
    t.integer  "villa_id"
    t.integer  "feature_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "featureds", ["feature_id"], name: "index_featureds_on_feature_id"
  add_index "featureds", ["villa_id"], name: "index_featureds_on_villa_id"

  create_table "features", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "types", force: true do |t|
    t.integer  "villa_id"
    t.integer  "collection_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "types", ["collection_id"], name: "index_types_on_collection_id"
  add_index "types", ["villa_id"], name: "index_types_on_villa_id"

  create_table "villa_features", force: true do |t|
    t.integer  "villa_id"
    t.integer  "feature_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "villa_features", ["feature_id"], name: "index_villa_features_on_feature_id"
  add_index "villa_features", ["villa_id"], name: "index_villa_features_on_villa_id"

  create_table "villas", force: true do |t|
    t.string   "name"
    t.integer  "reference"
    t.string   "address"
    t.text     "strapline"
    t.text     "description"
    t.string   "image_file"
    t.integer  "sleeps"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "area_id"
  end

  add_index "villas", ["area_id"], name: "index_villas_on_area_id"

end
