COPY weather(code,
    province,
    dated,
    avg_temp,
    min_temp,
    max_temp,
    precipitation,
    max_wind_speed,
    most_wind_direction,
    avg_relative_humidity)
FROM 'C:/Users/Public/Programming/SK-Covid Data/CSVs/Weather.csv'
DELIMITER ','
CSV HEADER