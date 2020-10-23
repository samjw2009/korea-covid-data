COPY region(code,
    province,
    city,
    latitude,
    longitude,
    elementary_school_count,
    kindergarten_count,
    university_count,
    academy_ratio,
    elderly_population_ratio,
    elderly_alone_ratio,
    nursing_home_count)
FROM 'C:/Users/Public/Programming/SK-Covid Data/CSVs/Region.csv'
DELIMITER ','
CSV HEADER