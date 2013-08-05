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

ActiveRecord::Schema.define(version: 20130805002811) do

  create_table "total_closings", force: true do |t|
    t.integer  "Total_sale"
    t.integer  "Total_pin"
    t.integer  "Total_creditcard"
    t.string   "TMZ_Phone"
    t.integer  "TMZ_Total"
    t.string   "Sunny_Phone"
    t.integer  "Sunny_Total"
    t.integer  "Raj"
    t.integer  "Bill_paid"
    t.integer  "Bill_Received"
    t.string   "Other_paid"
    t.integer  "Other_amount"
    t.integer  "Cash_In_Hand"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
