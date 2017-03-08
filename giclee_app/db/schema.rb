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

ActiveRecord::Schema.define(version: 20170307170110) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chargeables", force: :cascade do |t|
    t.float    "scan_a4"
    t.float    "scan_a3"
    t.float    "scan_a2"
    t.float    "scan_a1"
    t.float    "scan_a0"
    t.float    "scan_sr"
    t.float    "scan_hr"
    t.float    "scan_dp"
    t.float    "demarco"
    t.float    "cust_file"
    t.float    "write_cd"
    t.float    "write_dvd"
    t.float    "overprint_disc"
    t.float    "certs"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "client_details", force: :cascade do |t|
    t.string   "company_name"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "city"
    t.string   "post_code"
    t.string   "telephone_number"
    t.string   "mobile_number"
    t.string   "contact_name"
    t.string   "email"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "job_entries", force: :cascade do |t|
    t.string   "material"
    t.integer  "size_width"
    t.integer  "size_height"
    t.string   "units"
    t.integer  "runs"
    t.integer  "prints"
    t.float    "margin"
    t.float    "per_print"
    t.float    "discount"
    t.float    "price"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
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

  create_table "material_charges", force: :cascade do |t|
    t.float    "sell_a4"
    t.float    "sell_a3"
    t.float    "sell_a2"
    t.float    "sell_a1"
    t.float    "sell_b0"
    t.float    "sell_b1"
    t.float    "sell_b2"
    t.float    "sell_b3"
    t.float    "sell_b4"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "material_id"
    t.index ["material_id"], name: "index_material_charges_on_material_id", using: :btree
  end

  create_table "material_costs", force: :cascade do |t|
    t.float    "cost_a4"
    t.float    "cost_a3"
    t.float    "cost_a2"
    t.float    "cost_a1"
    t.float    "cost_b0"
    t.float    "cost_b1"
    t.float    "cost_b2"
    t.float    "cost_b3"
    t.float    "cost_b4"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "material_id"
    t.index ["material_id"], name: "index_material_costs_on_material_id", using: :btree
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

  add_foreign_key "material_charges", "materials"
  add_foreign_key "material_costs", "materials", on_delete: :cascade
end
