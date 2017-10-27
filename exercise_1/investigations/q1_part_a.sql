-- part a:what hospitals are models of high quality care ; 
select a.id, a.name, b.overall_rating
from tt_hospitals a join tt_hospital_qos_rating b on (a.id = b.id) 
where b.overall_rating = 5;

