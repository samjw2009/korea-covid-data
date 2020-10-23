CREATE TABLE region (
    code SERIAL,
    province VARCHAR,
    city VARCHAR,
    latitude FLOAT,
    longitude FLOAT,
    elementary_school_count INT,
    kindergarten_count INT,
    university_count INT,
    academy_ratio FLOAT,
    elderly_population_ratio FLOAT,
    elderly_alone_ratio FLOAT,
    nursing_home_count INT
)