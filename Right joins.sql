-- 31. Retrieve all courses with enrolled student names, including courses with no enrolled students.
select c.course_name, s.student_name
from students s
right join enrollments e on e.student_id =s.student_id
right join courses c on c.course_id = e.course_id;

-- 32. List course names with student names for all courses.
select c.course_name, s.student_name
from students s 
right join enrollments e on e.student_id = s.student_id
right join courses c on c.course_id = e.course_id;

-- 33. Retrieve all courses with student details if enrolled.
select c.course_name,s.student_name
from students s 
right join enrollments e on e.student_id = s.student_id
right join courses c on c.course_id = e.course_id;

-- 34. List courses and enrolled student names where course duration is 3 months.
select c.course_name,s.student_name,c.duration_months
from students s
right join enrollments e on e.student_id = s.student_id
right join courses c on c.course_id = e.course_id
where c.duration_months=3;

-- 35. Retrieve all courses with enrollment dates of students.
select c.course_name,e.enrollment_date
from students s
right join enrollments e on e.student_id = s.student_id
right join courses c on c.course_id = e.course_id;

-- 35. Retrieve all courses with enrollment dates of students.
select c.course_name,e.enrollment_date
from students s
right join enrollments e on e.student_id = s.student_id
right join courses c on c.course_id = e.course_id;

-- 36. Find courses and student names where course ID is 101.
select c.course_id,c.course_name,s.student_name
from students s
right join enrollments e on e.student_id = s.student_id
right join courses c on c.course_id = e.course_id
where c.course_id=101;

-- 37. Retrieve course names and student names for enrollments made in June.
select c.course_id,c.course_name,s.student_name,monthname(e.enrollment_date) as enrollment_month
from students s
right join enrollments e on e.student_id = s.student_id
right join courses c on c.course_id = e.course_id
where monthname(e.enrollment_date)='June';

-- 38. List courses and student names for courses with a duration of 5 months.
select c.course_id,c.course_name,s.student_name,c.duration_months
from students s
right join enrollments e on e.student_id = s.student_id
right join courses c on c.course_id = e.course_id
where c.duration_months=5;


-- 39. Retrieve all courses and student names for students living in 'Mumbai'.
select c.course_id,c.course_name,s.student_name,s.city
from students s
right join enrollments e on e.student_id = s.student_id
right join courses c on c.course_id = e.course_id
where s.city='Mumbai';

-- 40. Find all courses with their enrolled students or NULL if no student is enrolled.
select c.course_id,c.course_name,s.student_name
from students s
right join enrollments e on e.student_id = s.student_id
right join courses c on c.course_id = e.course_id;






