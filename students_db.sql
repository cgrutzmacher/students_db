DROP DATABASE IF EXISTS students;
CREATE DATABASE students;

USE students;

CREATE TABLE user (
	ID smallint(5) unsigned NOT NULL AUTO_INCREMENT,
	Name varchar(30) NOT NULL,
	PRIMARY KEY (ID)
);

CREATE TABLE courseName (
	ID smallint(5) unsigned NOT NULL AUTO_INCREMENT,
	Name varchar(50) NOT NULL UNIQUE,
	PRIMARY KEY (ID)
);

CREATE TABLE coursesTaken (
	ID			INT				PRIMARY KEY		AUTO_INCREMENT,
    StudentID 	smallint(5)		NOT NULL,
    CourseID	smallint(5)		NOT NULL,
    FOREIGN KEY (StudentID) REFERENCES user (ID),
    FOREIGN KEY (CourseID)	REFERENCES courseName(ID)
);

ALTER TABLE coursesTaken
ADD CONSTRAINT FK_course
FOREIGN KEY (CourseID) REFERENCES courseName (ID)
ON UPDATE CASCADE;


INSERT INTO courseName VALUES
(NULL, 'HTML5'),
(NULL, 'CSS3'),
(NULL, 'JavaScript'),
(NULL, 'PHP'),
(NULL, 'MySQL');

INSERT INTO user VALUES
(NULL, 'Alice'),
(NULL, 'Bob'),
(NULL, 'Caroline'),
(NULL, 'David'),
(NULL, 'Emma'),
(NULL, 'Lazy Abe');

INSERT INTO coursesTaken VALUES
(NULL, 1, 1),
(NULL, 1, 2),
(NULL, 1, 3),
(NULL, 2, 4),
(NULL, 2, 1),
(NULL, 3, 5),
(NULL, 3, 1),
(NULL, 4, 4),
(NULL, 5, 1),
(NULL, 5, 2),
(NULL, 5, 3),
(NULL, 5, 4),
(NULL, 5, 5);