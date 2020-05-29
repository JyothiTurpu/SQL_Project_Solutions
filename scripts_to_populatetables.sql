USE devcamp_sql_course_project;

INSERT 
INTO STUDENTS(student_name, student_email,student_dob,student_graduation_year) 
VALUES('Varun', 'varun.sai@gmail.com', '2012-03-01', 2020);

INSERT INTO STUDENTS(student_name, student_email,student_dob,student_graduation_year) 
VALUES('Jyothi', 'jyothi.sai@gmail.com', '2012-02-01', 2020);

INSERT 
INTO STUDENTS(student_name, student_email,student_dob,student_graduation_year) 
VALUES('Saravana', 'saravana.sai@gmail.com', '2012-01-01', 2020);

SELECT * 
FROM STUDENTS;


INSERT 
INTO COURSES(course_name)
VALUES('English');

INSERT 
INTO COURSES(course_name)
VALUES('Math');

INSERT 
INTO COURSES(course_name)
VALUES('Science');

SELECT * FROM COURSES;


INSERT 
INTO PROFESSORS(professor_name, professor_course_id)
VALUES('Zappolo', 1);

INSERT 
INTO PROFESSORS(professor_name, professor_course_id)
VALUES('Flaherty', 2);


INSERT 
INTO PROFESSORS(professor_name, professor_course_id)
VALUES('Sullivan', 3);


SELECT * FROM PROFESSORS;


INSERT 
INTO GRADES(grade_score, grade_course_id, grade_student_id)
VALUES(20,1,1);

INSERT 
INTO GRADES(grade_score, grade_course_id, grade_student_id)
VALUES(40,2,1);


INSERT 
INTO GRADES(grade_score, grade_course_id, grade_student_id)
VALUES(60,3,1);

INSERT 
INTO GRADES(grade_score, grade_course_id, grade_student_id)
VALUES(20,1,2);

INSERT 
INTO GRADES(grade_score, grade_course_id, grade_student_id)
VALUES(40,2,2);


INSERT 
INTO GRADES(grade_score, grade_course_id, grade_student_id)
VALUES(60,3,2);




INSERT 
INTO GRADES(grade_score, grade_course_id, grade_student_id)
VALUES(20,1,3);

INSERT 
INTO GRADES(grade_score, grade_course_id, grade_student_id)
VALUES(40,2,3);


INSERT 
INTO GRADES(grade_score, grade_course_id, grade_student_id)
VALUES(60,3,3);




SELECT * FROM GRADES;








