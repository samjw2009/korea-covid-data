COPY timegender(dated,
    time_point,
    sex,
    confirmed,
    deceased)
FROM 'C:/Users/Public/Programming/SK-Covid Data/CSVs/TimeGender.csv'
DELIMITER ','
CSV HEADER