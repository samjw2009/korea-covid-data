COPY timed(dated,
    time_point,
    test,
    negative,
    confirmed,
    released,
    deceased)
FROM 'C:/Users/Public/Programming/SK-Covid Data/CSVs/Time.csv'
DELIMITER ','
CSV HEADER