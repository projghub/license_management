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

ActiveRecord::Schema.define(:version => 20130111215412) do

  create_table "agreements", :force => true do |t|
    t.integer  "purchase_order_id"
    t.integer  "purchase_order_item_id"
    t.integer  "purchase_order_item_type_id"
    t.string   "account_id"
    t.integer  "quantity"
    t.text     "notes"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "exuberance_coordinator_id"
    t.integer  "funding_source"
    t.integer  "status_id"
    t.boolean  "deleted"
    t.string   "created_by"
    t.string   "modified_by"
    t.string   "net_suite_account_id"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
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

  create_table "licenses", :force => true do |t|
    t.integer  "agreement_id"
    t.integer  "license_type_id"
    t.integer  "status_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "lookups", :force => true do |t|
    t.string   "lookup_type"
    t.string   "name"
    t.integer  "value"
    t.string   "description"
    t.integer  "priority"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "net_suite_accounts", :force => true do |t|
    t.integer  "account_id"
    t.string   "name"
    t.string   "parent_name"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
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

  create_table "purchase_order_items", :force => true do |t|
    t.integer  "purchase_order_id"
    t.integer  "number"
    t.decimal  "amount"
    t.integer  "quantity"
    t.integer  "allocated_quantity"
    t.boolean  "deleted"
    t.string   "created_by"
    t.string   "modified_by"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "purchase_orders", :force => true do |t|
    t.integer  "sale_id"
    t.string   "account_id"
    t.date     "purchase_order_date"
    t.string   "number"
    t.decimal  "amount",                :precision => 10, :scale => 2, :default => 0.0, :null => false
    t.string   "invoice_number"
    t.string   "area_sales_manager_id"
    t.integer  "region_id"
    t.string   "field_technician_id"
    t.decimal  "discount",              :precision => 10, :scale => 2, :default => 0.0, :null => false
    t.decimal  "tax",                   :precision => 10, :scale => 2, :default => 0.0, :null => false
    t.text     "notes"
    t.boolean  "deleted"
    t.string   "created_by"
    t.string   "modified_by"
    t.string   "net_suite_account_id"
    t.datetime "created_at",                                                            :null => false
    t.datetime "updated_at",                                                            :null => false
  end

  create_table "sales", :force => true do |t|
    t.integer  "number"
    t.boolean  "deleted"
    t.string   "created_by"
    t.string   "modified_by"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
