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

ActiveRecord::Schema.define(:version => 20130210191906) do

  create_table "bus_routes", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",                                            :null => false
    t.datetime "updated_at",                                            :null => false
    t.spatial  "route_outline", :limit => {:srid=>0, :type=>"polygon"}
  end

  add_index "bus_routes", ["name"], :name => "index_bus_routes_on_name", :unique => true

  create_table "recorded_positions", :force => true do |t|
    t.integer  "bus_route_id"
    t.integer  "bus_id"
    t.string   "direction"
    t.integer  "block_id"
    t.string   "destination"
    t.datetime "reported_at"
    t.datetime "created_at",                                         :null => false
    t.datetime "updated_at",                                         :null => false
    t.spatial  "location",     :limit => {:srid=>0, :type=>"point"}
  end

end
