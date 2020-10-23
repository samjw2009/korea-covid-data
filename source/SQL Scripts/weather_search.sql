CREATE TABLE weather_search AS
    SELECT * FROM weather
    INNER JOIN search ON search.dated = weather.weather_date