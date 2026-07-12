create database college_db_1;
use college_db_1;

-- create students table
CREATE TABLE students ( student_id INT PRIMARY KEY, student_name VARCHAR(50), city VARCHAR(30) );

INSERT INTO students VALUES (1, 'Amit Sharma', 'Delhi'), (2, 'Priya Verma', 'Mumbai'), (3, 'Ravi Kumar', 'Pune'), (4, 'Neha Singh', 'Delhi'), (5, 'Rahul Mehta', 'Bangalore'), (6, 'Kiran Joshi', 'Hyderabad');

desc students;

-- create courses table

CREATE TABLE courses ( course_id INT PRIMARY KEY, course_name VARCHAR(50), duration_months INT );

INSERT INTO courses VALUES (101, 'SQL Basics', 2), (102, 'Python Programming', 3), (103, 'Data Science', 4), (104, 'Web Development', 5);

desc courses;

-- create enrollments table

CREATE TABLE enrollments ( enrollment_id INT PRIMARY KEY, student_id INT, course_id INT, enrollment_date DATE );

INSERT INTO enrollments VALUES (1001, 1, 101, '2025-06-01'), (1002, 2, 102, '2025-06-02'), (1003, 3, 103, '2025-06-03'), (1004, 1, 102, '2025-06-04'), (1005, 4, 104, '2025-06-05'), (1006, 3, 101, '2025-06-06');

desc enrollments;
