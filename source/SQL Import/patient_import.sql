COPY patient(patient_id,
    sex,
    age,
    country,
    province,
    city,
    infection_case,
    infected_by,
    contact_number,
    symptom_onset,
    confirmed_date,
    released_date,
    deceased_date,
    self_state)
FROM 'C:/Users/Public/Programming/SK-Covid Data/CSVs/PatientInfo.csv'
DELIMITER ','
CSV HEADER