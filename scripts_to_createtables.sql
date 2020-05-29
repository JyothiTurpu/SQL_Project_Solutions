delimiter $$

CREATE TABLE `courses` (
  `course_id` int(11) NOT NULL AUTO_INCREMENT,
  `course_name` varchar(45) NOT NULL,
  PRIMARY KEY (`course_id`),
  UNIQUE KEY `course_id_UNIQUE` (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8$$

delimiter $$

CREATE TABLE `grades` (
  `grade_id` int(11) NOT NULL AUTO_INCREMENT,
  `grade_score` int(11) NOT NULL,
  `grade_course_id` int(11) NOT NULL,
  `grade_student_id` int(11) NOT NULL,
  PRIMARY KEY (`grade_id`),
  UNIQUE KEY `grade_id_UNIQUE` (`grade_id`),
  KEY `grade_course_id` (`grade_course_id`),
  KEY `grade_student_id` (`grade_student_id`),
  CONSTRAINT `grade_course_id` FOREIGN KEY (`grade_course_id`) REFERENCES `courses` (`course_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `grade_student_id` FOREIGN KEY (`grade_student_id`) REFERENCES `students` (`student_id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8$$



delimiter $$

CREATE TABLE `professors` (
  `professor_id` int(11) NOT NULL AUTO_INCREMENT,
  `professor_name` varchar(45) NOT NULL,
  `professor_course_id` int(11) NOT NULL,
  PRIMARY KEY (`professor_id`),
  UNIQUE KEY `professor_id_UNIQUE` (`professor_id`),
  UNIQUE KEY `professor_course_id_UNIQUE` (`professor_course_id`),
  KEY `professors_course_id` (`professor_course_id`),
  CONSTRAINT `professors_course_id` FOREIGN KEY (`professor_course_id`) REFERENCES `courses` (`course_id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8$$



delimiter $$

CREATE TABLE `students` (
  `student_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_name` varchar(45) NOT NULL,
  `student_email` varchar(45) NOT NULL,
  `student_dob` datetime NOT NULL,
  `student_graduation_year` int(11) NOT NULL,
  PRIMARY KEY (`student_id`),
  UNIQUE KEY `student_id_UNIQUE` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8$$

