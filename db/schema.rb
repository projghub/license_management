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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130115035300) do

  create_table "agreement_statuses", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "agreements", :force => true do |t|
    t.integer  "purchase_order_id",           :null => false
    t.integer  "purchase_order_item_id"
    t.integer  "purchase_order_item_type_id"
    t.integer  "quantity"
    t.text     "notes"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "exuberance_coordinator_id"
    t.integer  "funding_source"
    t.integer  "agreement_status_id"
    t.boolean  "deleted"
    t.string   "created_by"
    t.string   "modified_by"
    t.string   "net_suite_account_id"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  create_table "funding_sources", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "license_histories", :force => true do |t|
    t.integer  "license_id",                 :null => false
    t.integer  "event_id"
    t.integer  "previous_agreement_id"
    t.integer  "current_agreement_id"
    t.integer  "previous_license_type_id"
    t.integer  "current_license_type_id"
    t.integer  "previous_license_status_id"
    t.integer  "current_license_status_id"
    t.integer  "reason_id"
    t.text     "notes"
    t.string   "created_by"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "license_type_lookups", :force => true do |t|
    t.integer  "item_id"
    t.integer  "license_type_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "license_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "licenses", :force => true do |t|
    t.integer  "agreement_id"
    t.integer  "license_type_id"
    t.integer  "status_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "lookups", :force => true do |t|
    t.string   "lookup_type"
    t.string   "name",                       :null => false
    t.integer  "value"
    t.string   "description"
    t.integer  "priority",    :default => 1
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "net_suite_accounts", :force => true do |t|
    t.integer  "account_id"
    t.string   "name"
    t.string   "parent_name"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "notes", :force => true do |t|
    t.text     "description"
    t.integer  "noteable_id"
    t.string   "noteable_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "opportunities", :force => true do |t|
    t.integer  "agreement_id", :null => false
    t.date     "created_date"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "purchase_order_item_lookups", :force => true do |t|
    t.integer  "purchase_order_id",           :null => false
    t.integer  "purchase_order_item_type_id"
    t.integer  "fulfillment_type_id"
    t.string   "name"
    t.text     "description"
    t.boolean  "standard"
    t.boolean  "inactive"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  create_table "purchase_order_item_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "purchase_order_items", :force => true do |t|
    t.integer  "purchase_order_id",                     :null => false
    t.integer  "number"
    t.decimal  "amount"
    t.integer  "quantity"
    t.integer  "allocated_quantity"
    t.boolean  "deleted",            :default => false
    t.string   "created_by"
    t.string   "modified_by"
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
  end

  create_table "purchase_orders", :force => true do |t|
    t.integer  "net_suite_account_id"
    t.integer  "region_id"
    t.string   "number"
    t.integer  "sale_number"
    t.integer  "invoice_number"
    t.date     "purchase_order_date"
    t.string   "apm"
    t.string   "sts"
    t.text     "notes"
    t.boolean  "deleted"
    t.string   "created_by"
    t.string   "modified_by"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "regions", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "sales", :force => true do |t|
    t.integer  "number"
    t.boolean  "deleted",     :null => false
    t.string   "created_by"
    t.string   "modified_by"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
