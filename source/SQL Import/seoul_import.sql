COPY seoul(dated,
    hour,
    birth_year,
    sex,
    province,
    city,
    fp_num)
FROM 'C:/Users/Public/Programming/SK-Covid Data/CSVs/SeoulFloating.csv'
DELIMITER ','
CSV HEADER