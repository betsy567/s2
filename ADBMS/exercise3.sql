-- create database university;
-- use university;
-- create table student (name varchar(20),student_number int PRIMARY KEY,Class varchar(10),Major varchar(25));
-- create table course (course_name varchar(25),course_number VARCHAR(30) PRIMARY KEY,credit_hours int,deaprtment varchar(20));
-- create table section(section_identifier int primary key,course_number varchar(30),FOREIGN KEY(course_number)REFERENCES course(course_number),semester varchar(20),Year int,Instructor varchar(30));
create table Grade_report(student_number int NOT NULL,section_identifier int NOT NULL,
PRIMARY KEY(student_number,section_identifier),
grade varchar(10),
FOREIGN KEY (student_number) REFERENCES student(student_number),
FOREIGN KEY (section_identifier) REFERENCES section(section_identifier)); 

create table Prerequisite(
course_number varchar(30),
prerequisite_number varchar(30),
PRIMARY KEY(course_number,prerequisite_number),
FOREIGN KEY (course_number) REFERENCES course(course_number),
FOREIGN KEY (prerequisite_number) REFERENCES course(course_number));

INSERT INTO student (name,student_number,Class,Major)VALUES('Smith',17,1,'CS');
INSERT INTO student (name,student_number,Class,Major)VALUES('Brown',8,2,'CS');
select * from student;
alter table course RENAME column deaprtment to department;
INSERT INTO course(course_name,course_number,credit_hours,department)VALUES(
'Intro to Computer Science','CS1310',4,'CS'); 
INSERT INTO course(course_name,course_number,credit_hours,department)VALUES(
'Data Structures','CS3320',4,'CS'); 
INSERT INTO course(course_name,course_number,credit_hours,department)VALUES(
'Discrete Mathematics','MATH2410',3,'MATH'); 
INSERT INTO course(course_name,course_number,credit_hours,department)VALUES(
'Database','CS3380',3,'CS'); 
select * from course;
INSERT INTO section(section_identifier,course_number,semester,Year,Instructor)VALUES
(85,'MATH2410','Fall',07,'King');
INSERT INTO section(section_identifier,course_number,semester,Year,Instructor)VALUES
(92,'CS1310','Fall',07,'Anderson');
INSERT INTO section(section_identifier,course_number,semester,Year,Instructor)VALUES
(102,'CS3320','Spring',08,'Knuth');
INSERT INTO section(section_identifier,course_number,semester,Year,Instructor)VALUES
(112,'MATH2410','Fall',08,'Chang');
INSERT INTO section(section_identifier,course_number,semester,Year,Instructor)VALUES
(119,'CS1310','Fall',08,'Anderson');
INSERT INTO section(section_identifier,course_number,semester,Year,Instructor)VALUES
(135,'CS3380','Fall',08,'Stone');
SELECT * FROM SECTION;
INSERT INTO Grade_report(student_number,section_identifier,grade)VALUES
(17,112,'B');
INSERT INTO Grade_report(student_number,section_identifier,grade)VALUES
(17,119,'C');
INSERT INTO Grade_report(student_number,section_identifier,grade)VALUES
(8,85,'A');
INSERT INTO Grade_report(student_number,section_identifier,grade)VALUES
(8,92,'A');
INSERT INTO Grade_report(student_number,section_identifier,grade)VALUES
(8,102,'B');
INSERT INTO Grade_report(student_number,section_identifier,grade)VALUES
(8,135,'A');
SELECT * FROM GRADE_REPORT;
select * from Prerequisite;
use university;
SELECT * FROM COURSE;
SELECT COURSE_NAME,GRADE FROM GRADE_REPORT INNER JOIN STUDENT ON GRADE_REPORT.STUDENT_NUMBER=STUDENT.STUDENT_NUMBER INNER JOIN SECTION ON GRADE_REPORT.SECTION_IDENTIFIER=SECTION.SECTION_IDENTIFIER INNER JOIN COURSE ON SECTION.COURSE_NUMBER=COURSE.COURSE_NUMBER WHERE NAME='SMITH';
SELECT NAME,GRADE FROM GRADE_REPORT INNER JOIN STUDENT ON GRADE_REPORT.STUDENT_NUMBER=STUDENT.STUDENT_NUMBER INNER JOIN SECTION ON GRADE_REPORT.SECTION_IDENTIFIER=SECTION.SECTION_IDENTIFIER INNER JOIN COURSE ON SECTION.COURSE_NUMBER=COURSE.COURSE_NUMBER WHERE SEMESTER='FALL'AND YEAR=08 AND COURSE_NAME='DATABASE';
SELECT PREREQUISITE_NUMBER FROM PREREQUISITE INNER JOIN COURSE ON PREREQUISITE.COURSE_NUMBER=COURSE.COURSE_NUMBER WHERE COURSE_NAME='DATABASE';
SELECT NAME FROM STUDENT WHERE MAJOR='CS';
SELECT COURSE_NAME FROM COURSE INNER JOIN SECTION ON SECTION.COURSE_NUMBER=COURSE.COURSE_NUMBER WHERE INSTRUCTOR='KING' AND YEAR IN(07,08);

USE UNIVERSITY;
SELECT SECTION.COURSE_NUMBER,SECTION.SEMESTER,SECTION.YEAR,SECTION.SECTION_IDENTIFIER,COUNT(GRADE_REPORT.STUDENT_NUMBER) FROM SECTION,GRADE_REPORT WHERE GRADE_REPORT.SECTION_IDENTIFIER=SECTION.SECTION_IDENTIFIER  AND SECTION.INSTRUCTOR='KING'GROUP BY SECTION_IDENTIFIER;
SELECT NAME,COURSE_NAME,COURSE.COURSE_NUMBER,CREDIT_HOURS,SEMESTER,YEAR,GRADE FROM STUDENT INNER JOIN GRADE_REPORT ON STUDENT.STUDENT_NUMBER=GRADE_REPORT.STUDENT_NUMBER INNER JOIN SECTION ON SECTION.SECTION_IDENTIFIER=GRADE_REPORT.SECTION_IDENTIFIER INNER JOIN COURSE ON COURSE.COURSE_NUMBER=SECTION.COURSE_NUMBER WHERE CLASS=2 AND MAJOR='CS'; 
USE UNIVERSITY;
INSERT INTO STUDENT VALUES('JOHNSON',25,1,'MATH');
SELECT * FROM STUDENT;
SET SQL_SAFE_UPDATES=0;
UPDATE STUDENT SET CLASS=2 WHERE NAME='SMITH';
SET SQL_SAFE_UPDATES=1;
SELECT * FROM STUDENT;
INSERT INTO COURSE VALUES('KNOWLEDGE ENGINEERING','CS4390',3,'CS');
SELECT * FROM COURSE;
DELETE FROM STUDENT WHERE NAME='SMITH' AND STUDENT_NUMBER=17;
SELECT * FROM STUDENT;

