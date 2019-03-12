# Väderlek
Weather data parser for project "Väderlek"

Runs on Rails 5.2.2 and Ruby 2.3.4

## API documentation

###### Usage

The API will return a JSON array containg the specified data.

Currently the following parameters are available:

`pluck=your_column` will pluck only the specified columns. Separate with spaces (%20 for URL encoded space). Date is always included.

`limit=number` will limit the returned object to only that amount of records. Default is all of them.

`sort_type=your_column` will sort the object by the specified column.

`sort_order=asc|desc` sets the sorting order (defaults to `asc`).

**An example query could look like this:**

`<root_url>/?limit=5&q=interval dew_point&sort_type=dew_point&sort_order=desc`

and would return the following result:

```
[
  {
    "id": null,
    "date": "2019-03-07T19:23:33.000Z",
    "interval": 15,
    "dew_point": 6
  },
  {
    "id": null,
    "date": "2019-03-07T19:08:33.000Z",
    "interval": 15,
    "dew_point": 5.9
  },
  {
    "id": null,
    "date": "2019-03-07T18:23:33.000Z",
    "interval": 15,
    "dew_point": 5.8
  },
  {
    "id": null,
    "date": "2019-03-07T18:38:33.000Z",
    "interval": 15,
    "dew_point": 5.8
  },
  {
    "id": null,
    "date": "2019-03-07T18:08:33.000Z",
    "interval": 15,
    "dew_point": 5.7
  }
]
```


The available columns are as follows:

- **name (data type) [unit]** 
- `date (datetime)`
- `interval (integer)`
- `interior_temperature (float) [C]`
- `interior_humidity (float) [%]`
- `exterior_temperature (float) [C]`
- `exterior_humidity (float) [%]`
- `relative_pressure (float) [hpa]`
- `absolute_pressure (float) [hpa]`
- `wind_speed (float) [km/h]`
- `wind_peaks (float) [km/h]`
- `wind_direction (string) [cardinal]`
- `dew_point (float) [C]`
- `windchill (float) [C]`
- `rain_hour (float) [mm]`
- `rain_day (float) [mm]`
- `rain_week (float) [mm]`
- `rain_month (float) [mm]`
- `rain_total (float) [mm]`

Enjoy! :)