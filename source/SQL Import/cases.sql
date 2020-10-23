CREATE TABLE cases (
    case_id SERIAL,
    province VARCHAR,
    city VARCHAR,
    groups BIT,
    infection_case VARCHAR,
    confirmed INT,
    latitude FLOAT,
    longitude FLOAT,
    PRIMARY KEY (case_id)
)