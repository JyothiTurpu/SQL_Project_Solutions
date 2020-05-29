#The average grade given by each professor
SELECT P.professor_name AS 'PROFESSOR', AVG(G.grade_score) AS 'AVERAGE'
FROM PROFESSORS P
JOIN GRADES G
ON P.professor_course_id = G.grade_course_id
GROUP BY P.professor_course_id;


#The top grades for each student
SELECT S.student_name AS 'STUDENT', MAX(G.grade_score) AS 'TOP_GRADE'
FROM STUDENTS S
JOIN GRADES G
ON S.student_id = G.grade_student_id
GROUP BY S.student_id;


#Group students by the courses that they are enrolled in
SELECT C.course_name AS 'COURSE', S.student_name AS 'STUDENT'
FROM COURSES C
JOIN GRADES G
ON C.course_id = G.grade_course_id
JOIN STUDENTS S
ON S.student_id = G.grade_student_id
ORDER BY C.course_name ASC;


#Create a summary report of courses and their average grades, 
#sorted by the most challenging course (course with the lowest average grade) to the easiest course
SELECT C.course_name AS 'COURSE', AVG(G.grade_score) AS 'AVG_GRADE'
FROM COURSES C
JOIN GRADES G
ON C.course_id = G. grade_course_id
GROUP BY G.grade_course_id
ORDER BY AVG_GRADE ASC;


#Finding which student and professor have the most courses in common
SELECT S.student_name AS 'STUDENT', P.professor_name AS 'PROFESSOR', C.course_name AS 'COURSE'
FROM PROFESSORS P
JOIN COURSES C
ON C.course_id = P.professor_course_id
JOIN GRADES G
ON G.grade_course_id = C.course_id
JOIN STUDENTS S
ON S.student_id = G.grade_student_id;



SELECT * FROM COURSES;
SELECT * FROM STUDENTS;
SELECT * FROM PROFESSORS;
SELECT * FROM GRADES;