COPY timeprov(dated,
    time_point,
    province,
    confirmed,
    released,
    deceased)
FROM 'C:/Users/Public/Programming/SK-Covid Data/CSVs/TimeProvince.csv'
DELIMITER ','
CSV HEADER