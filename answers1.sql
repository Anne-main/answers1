--question 1.1
SELECT first_name, last_name, date_of_birth
FROM patients;

--question 1.2
SELECT provider_id, first_name, providers_speciality
FROM providers;

--question2.1
SELECT first_name
FROM patients WHERE first_name LIKE'Ab';
--question2.2
SELECT speciality
FROM providers WHERE speciality LIKE'%y';


--question 3.1
SELECT * 
FROM patients
WHERE date_of_birth >'1980-01-01';

--question 3.2
SELECT * 
FROM visits
WHERE acuity_level >=2;

--question 4.1
SELECT language
FROM patients WHERE 'spanish';

--question 4.2
SELECT admitted
FROM visits 
WHERE  'migraine' AND 'disposition';

--question 4.3
SELECT date_of_birth
FROM patients WHERE BETWEEN '1975-01-01' AND '1980-12-31';

--question 5.1
SELECT first_name, last_name
FROM patients 
ORDER BY last_name ASC;

--question5.2
SELECT *
FROM visits
ORDER BY visit_date DESC;

--question 6.1
SELECT *
FROM admissions WHERE primary_diagnosis ='stroke' AND discharge_disposition = 'home';

--question 6.2
SELECT*
FROM providers WHERE join_date > '1995-12-31'
AND specialization IN ('pediatrics', 'cardiology';