COPY timeage(dated,
    time_point,
    age,
    confirmed,
    deceased)
FROM 'C:/Users/Public/Programming/SK-Covid Data/CSVs/TimeAge.csv'
DELIMITER ','
CSV HEADER