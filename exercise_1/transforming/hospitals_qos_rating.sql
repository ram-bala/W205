DROP TABLE tt_hospital_qos_rating;
CREATE TABLE tt_hospital_qos_rating AS
SELECT id, cast(rating as int) as overall_rating 
FROM hospitals_gen_info
WHERE rating not like "Not%"
;

