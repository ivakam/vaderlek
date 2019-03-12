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

ActiveRecord::Schema.define(version: 2019_03_12_125706) do

  create_table "weather_data", force: :cascade do |t|
    t.datetime "date"
    t.integer "interval"
    t.float "interior_temperature"
    t.float "interior_humidity"
    t.float "exterior_temperature"
    t.float "exterior_humidity"
    t.float "relative_pressure"
    t.float "absolute_pressure"
    t.float "wind_speed"
    t.float "wind_peaks"
    t.string "wind_direction"
    t.float "dew_point"
    t.float "windchill"
    t.float "rain_hour"
    t.float "rain_day"
    t.float "rain_week"
    t.float "rain_month"
    t.float "rain_total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
