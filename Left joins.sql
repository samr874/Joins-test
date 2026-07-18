use college_db_1;
desc students;
desc courses;
desc enrollments;
-- 16. Retrieve all students with their enrolled courses, including students not enrolled in any course.

select s.student_name,c.course_name
from students s
left join enrollments e on s.student_id = e.student_id 
left join courses c on e.course_id = c.course_id;

-- 17. List student names, course names, and enrollment dates for all students, including those without enrollments.
select s.student_name,c.course_name,e.enrollment_date
from students s 
left join enrollments e on s.student_id = e.student_id
left join courses c on c.course_id=e.course_id;

-- 18. Find all students and their courses if enrolled; if not, show NULL for course.
select s.student_name,c.course_name 
from students s
left join enrollments e on s.student_id = e.student_id
left join courses c on c.course_id = e.course_id;

-- 19. List all students with their course names if they are enrolled in a course with a duration of 4 months.
select s.student_name,c.course_name,c.duration_months
from students s
left join enrollments e on s.student_id = e.student_id
left join courses c on c.course_id = e.course_id
where c.duration_months = 4;

-- 20. Retrieve all students and their enrollment dates if enrolled; if not, show NULL.
select s.student_name, e.enrollment_date
from students s
left join enrollments e on s.student_id = e.student_id
left join courses c on c.course_id = e.course_id;

-- 21. List student names with their enrollment dates for all students.
select s.student_name,e.enrollment_date
from students s 
left join enrollments e on s.student_id = e.student_id
left join courses c on c.course_id = e.course_id;

-- 22. Find students living in 'Delhi' and their courses if enrolled.
select s.student_name,c.course_name,s.city
from students s 
left join enrollments e on s.student_id = e.student_id
left join courses c on c.course_id = e.course_id
where s.city = 'Delhi';

-- 23. Retrieve all students with course details where available.
select s.student_name,c.course_id,c.course_name,c.duration_months
from enrollments e 
left join students s on e.student_id = s.student_id
left join courses c on c.course_id = e.course_id
where e.enrollment_id is not null;

-- 24. Find all students and courses where course duration is 5 months.
select s.student_name,c.course_name,c.duration_months
from students s 
left join enrollments e on s.student_id = e.student_id
left join courses c on c.course_id = e.course_id
where c.duration_months = 5;

-- 25. Retrieve student names with course names for student IDs greater than 2.
select s.student_id,s.student_name,c.course_name
from students s 
left join enrollments e on e.student_id = s.student_id
left join courses c on e.course_id = e.course_id
where s.student_id >2 ;

-- 26. List all students and their enrolled course names for students living in 'Pune'.
select s.student_name,c.course_name,s.city
from students s 
left join enrollments e on e.student_id = s.student_id
left join courses c on c.course_id = e.course_id
where s.city='Pune';

-- 27. Retrieve all students with enrollment IDs if they are enrolled.
select e.enrollment_id,s.student_name
from enrollments e
left join students s on s.student_id = e.student_id;

-- 28. List all students with courses they are enrolled in, even if the course name is 'Web Development' and the student is not enrolled.
select s.student_name,c.course_name
from students s 
left join enrollments e on e.student_id = s.student_id
left join courses c on c.course_id = e.course_id;

-- 29. Retrieve all students with enrollment details for enrollment dates in June.
select s.student_name,c.course_name,e.enrollment_id, monthname(e.enrollment_date) as month
from students s 
left join enrollments e on e.student_id = s.student_id
left join courses c on c.course_id = e.course_id
where monthname(e.enrollment_date)='June';


-- 30. List all students and courses they are enrolled in, including students without enrollment.
select s.student_name,c.course_name
from students s
left join enrollments e on e.student_id = s.student_id
left join courses c on c.course_id = e.course_id;