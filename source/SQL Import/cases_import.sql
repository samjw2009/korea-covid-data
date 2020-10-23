COPY cases(case_id,province,city,groups,infection_case,confirmed,latitude,longitude)
FROM 'C:/Users/Public/Programming/SK-Covid Data/CSVs/Case.csv'
DELIMITER ','
CSV HEADER