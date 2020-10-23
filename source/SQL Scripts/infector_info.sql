CREATE TABLE infector_info AS
    SELECT * FROM patient_dist
    INNER JOIN infector ON CAST(patient_dist.patient_id AS VARCHAR) = infector.infector_id