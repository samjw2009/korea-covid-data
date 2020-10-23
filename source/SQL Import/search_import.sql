COPY search(dated,
    cold,
    flu,
    pneumonia,
    coronavirus)
FROM 'C:/Users/Public/Programming/SK-Covid Data/CSVs/SearchTrend.csv'
DELIMITER ','
CSV HEADER