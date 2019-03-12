require 'json'

weather_file = File.open(Rails.root.join('weather_data.json'))
weather_data = JSON.load(weather_file)

weather_data.each do | d |
    w = WeatherData.new
    w.date = d['Tid']
    w.interval = d['Intervall']
    w.interior_temperature = d['Temperatur Inne(°C)']
    w.interior_humidity = d['Luftfuktighet Inne(%)']
    w.exterior_temperature = d['Temperatur Ute(°C)']
    w.exterior_humidity = d['Luftfuktighet Ute(%)']
    w.relative_pressure = d['Relativt Lufttryck(hpa)']
    w.absolute_pressure = d['Absolut Lufttryck(hpa)']
    w.wind_speed = d['Vindhastighet(km/h)']
    w.wind_peaks = d['Vindby(km/h)']
    w.wind_direction = d['Vindriktning']
    w.dew_point = d['Daggpunkt(°C)']
    w.windchill = d['Vindavkylning(°C)']
    w.rain_hour = d['Regnmängd Timme(mm)']
    w.rain_day = d['Regnmängd 24 Timmar(mm)']
    w.rain_week = d['Regnmängd Vecka(mm)']
    w.rain_month = d['Regnmängd Månad(mm)']
    w.rain_total = d['Regnmängd Total(mm)']
    w.save
end