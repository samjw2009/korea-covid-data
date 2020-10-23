COPY policies(policy_id,
    country,
    types,
    gov_policy,
    detail,
    strt_date,
    end_date)
FROM 'C:/Users/Public/Programming/SK-Covid Data/CSVs/Policy.csv'
DELIMITER ','
CSV HEADER