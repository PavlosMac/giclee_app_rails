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

ActiveRecord::Schema.define(version: 20170303102214) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "job_entries", force: :cascade do |t|
    t.string   "product_name"
    t.string   "guk_name"
    t.integer  "size_width"
    t.integer  "size_height"
    t.integer  "units"
    t.integer  "runs"
    t.integer  "prints"
    t.float    "margin"
    t.float    "per_print"
    t.float    "discount"
    t.float    "price"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "originals"
  end

  create_table "job_entries_materials", id: false, force: :cascade do |t|
    t.integer "job_entry_id", null: false
    t.integer "material_id",  null: false
    t.index ["job_entry_id"], name: "index_job_entries_materials_on_job_entry_id", using: :btree
    t.index ["material_id"], name: "index_job_entries_materials_on_material_id", using: :btree
  end

  create_table "job_entries_pricing_systems", id: false, force: :cascade do |t|
    t.integer "job_entry_id",      null: false
    t.integer "pricing_system_id", null: false
    t.index ["job_entry_id"], name: "index_job_entries_pricing_systems_on_job_entry_id", using: :btree
    t.index ["pricing_system_id"], name: "index_job_entries_pricing_systems_on_pricing_system_id", using: :btree
  end

  create_table "materials", force: :cascade do |t|
    t.string   "product_name"
    t.string   "guk_name"
    t.integer  "roll_width_in"
    t.integer  "roll_length_m"
    t.integer  "factor"
    t.integer  "rounded_sale_price"
    t.float    "list_price"
    t.float    "cost_per_sqm"
    t.float    "ink_per_sqm"
    t.float    "supplier_discount"
    t.float    "sell_per_sqm"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "pricing_systems", force: :cascade do |t|
    t.float    "presentation"
    t.float    "standard"
    t.float    "premium"
    t.float    "premium_plus"
    t.float    "canvas_textile"
    t.float    "special_1"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

end
