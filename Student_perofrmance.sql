CREATE TABLE student_data (
    school VARCHAR(10),
    sex VARCHAR(10),
    age INT,
    address VARCHAR(10),
    famsize VARCHAR(10),
    Pstatus VARCHAR(10),
    Medu INT,
    Fedu INT,
    Mjob VARCHAR(20),
    Fjob VARCHAR(20),
    reason VARCHAR(20),
    guardian VARCHAR(20),
    traveltime INT,
    studytime INT,
    failures INT,
    schoolsup VARCHAR(10),
    famsup VARCHAR(10),
    paid VARCHAR(10),
    activities VARCHAR(10),
    nursery VARCHAR(10),
    higher VARCHAR(10),
    internet VARCHAR(10),
    romantic VARCHAR(10),
    famrel INT,
    freetime INT,
    goout INT,
    Dalc INT,
    Walc INT,
    health INT,
    absences INT,
    G1 INT,
    G2 INT,
    G3 INT
);
--counting rows
SELECT
COUNT(*) FROM student_data;
---showing top 5 rows
SELECT *
FROM student_data 
LIMIT 5;
--total students
SELECT COUNT(*)
AS total_students 
FROM student_data;
--how many schools and count
SELECT school, COUNT(*) 
FROM  student_data
GROUP BY school;
--BOYS VS GIRLS
SELECT sex, 
COUNT(*) 
FROM student_data
GROUP BY sex;
--AVERAGE FINAL GRADE(G3)
SELECT AVG(G3) AS 
avg_final_grade 
FROM student_data;
--TOP 5 STUDENTS WITH THE HIGHEST FINAL GRADE
SELECT * FROM 
student_data
ORDER BY G3 DESC
LIMIT 5;
--students who failed (G3<10)
SELECT COUNT(*)
AS failed_students
FROM student_data 
WHERE G3 < 10;
-- Display only school, sex and age
SELECT school, sex, age 
FROM student_data;
-- Find unique school names
SELECT DISTINCT school 
FROM student_data;
-- Display students whose age is greater than 17
SELECT * FROM student_data 
WHERE age > 17;
-- Display female students
SELECT * FROM student_data 
WHERE sex = 'F';
-- Sort students based on G3 in descending order
SELECT * FROM student_data 
ORDER BY G3 DESC;
-- Display the top 10 students based on G3
SELECT * FROM student_data 
ORDER BY G3 
DESC LIMIT 10;
-- Find the highest and lowest G3 grades
SELECT MAX(G3) 
AS highest_G3, 
MIN(G3) AS lowest_G3 FROM student_data;
-- Calculate the average G3 grade for each school
SELECT school, 
AVG(G3) AS avg_G3 
FROM student_data 
GROUP BY school;

-- Count male and female students separately
SELECT sex, 
COUNT(*) AS count 
FROM student_data GROUP BY sex;
-- Find schools having an average G3 greater than 10
SELECT school, AVG(G3) AS avg_G3 
FROM student_data 
GROUP BY school HAVING AVG(G3) > 10;