CREATE TABLE infector AS 
    SELECT infected_by,COUNT(infected_by) 
    FROM patient_dist
    GROUP BY infected_by
    ORDER BY COUNT(infected_by) DESC