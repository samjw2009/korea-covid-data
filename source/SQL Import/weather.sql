CREATE TABLE weather (
    code SERIAL,
    province VARCHAR,
    dated VARCHAR,
    avg_temp FLOAT,
    min_temp FLOAT,
    max_temp FLOAT,
    precipitation FLOAT,
    max_wind_speed FLOAT,
    most_wind_direction FLOAT,
    avg_relative_humidity FLOAT
)