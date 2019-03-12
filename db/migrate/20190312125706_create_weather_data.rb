class CreateWeatherData < ActiveRecord::Migration[5.2]
  def change
    create_table :weather_data do |t|
      t.datetime :date
      t.integer :interval
      t.float :interior_temperature
      t.float :interior_humidity
      t.float :exterior_temperature
      t.float :exterior_humidity
      t.float :relative_pressure
      t.float :absolute_pressure
      t.float :wind_speed
      t.float :wind_peaks
      t.string :wind_direction
      t.float :dew_point
      t.float :windchill
      t.float :rain_hour
      t.float :rain_day
      t.float :rain_week
      t.float :rain_month
      t.float :rain_total
      t.timestamps
    end
  end
end
