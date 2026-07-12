-- 1. Retrieve all students with their enrolled course names.
desc students;
desc enrollments;
desc courses;

select s.student_name, c.course_name
from students s
inner join enrollments e
on s.student_id = e.student_id
inner join courses c
 on c.course_id = e.course_id;

-- 2. Retrieve student names, course names, and enrollment dates.
select s.student_name , c.course_name, e.enrollment_date
from students s
inner join enrollments e
on s.student_id = e.student_id
inner join courses c 
on c.course_id = e.course_id;

-- 3. List student names and course names where the course duration is more than 2 months.
select s.student_name, c.course_name, e.enrollment_date
from students s
inner join enrollments e
on s.student_id = e.student_id
inner join courses c
on c.course_id = c.course_id;

-- 4. Retrieve all enrollments with student city.
select e.enrollment_id, s.city
from enrollments e
inner join students s
on e.student_id = s.student_id;

-- 5. Retrieve all enrollments with course duration.
select e.enrollment_id, c.duration_months
from enrollments e
inner join courses c
on e.course_id = c.course_id;

-- 6. List student names enrolled in 'SQL Basics'.
select s.student_name,c.course_name
from students s
inner join enrollments e
on e.student_id = s.student_id
inner join courses c
on c.course_id = e.course_id
where c.course_name = 'sql basics';

-- 7. Retrieve course names for students living in 'Delhi'.
select s.student_name,c.course_name,s.city
from students s
inner join enrollments e
on s.student_id= e.student_id
inner join courses c 
on c.course_id = e.course_id
where s.city = 'Delhi';

-- 8. Find students enrolled in 'Data Science' with their cities.
select s.student_name,c.course_name,s.city
from students s
inner join enrollments e
on s.student_id = e.student_id
inner join courses c
on c.course_id = e.course_id
where c.course_name = 'data science';

-- 9. Retrieve student names, course names, and enrollment IDs.
select s.student_name,c.course_name,e.enrollment_id
from students s
inner join enrollments e
on s.student_id = e.student_id
inner join courses c
on c.course_id = e.course_id;

-- 10. List student names with enrollment dates where course duration is less than 5 months.
select s.student_name,e.enrollment_date
from students s 
inner join enrollments e
on s.student_id = e.student_id
inner join courses c
on c.course_id = e.course_id
where c.duration_months < 5;

-- 11. Retrieve student and course details for enrollment IDs greater than 1003.
select s.student_name,e.enrollment_id,c.course_name,c.duration_months,c.course_id
from students s
inner join enrollments e
on e.student_id = s.student_id
inner join courses c
on c.course_id = e.course_id
where e.enrollment_id >1003;

-- 12. Retrieve all students with their courses where enrollment date is after '2025-06-02'.
select s.student_name,c.course_name,e.enrollment_date
from  students s 
inner join enrollments e
on e.student_id = s.student_id
inner join courses c 
on c.course_id = e.course_id
where e.enrollment_date > '2025-06-02';

-- 13. Retrieve the student name and course name for student ID 1.
select s.student_id,s.student_name,c.course_name
from students s 
inner join enrollments e
on e.student_id = s.student_id
inner join courses c 
on e.course_id = c.course_id 
where s.student_id = 1;

-- 14. List the course name and student name for courses with a duration of 3 months.
select c.course_name,  s.student_name,c.duration_months
from courses c 
inner join enrollments e
on c.course_id = e.course_id
inner join students s 
on e.student_id = s.student_id
where c.duration_months>3;

-- 15. Retrieve enrollment details with student names for students living in 'Bangalore'.
select e.enrollment_id,e.student_id, s.student_name , e.enrollment_date, e.course_id
from enrollments e 
inner join students s
on e.student_id = s.student_id
where s.city='Banglore';

select * from students;



