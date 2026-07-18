-- 41. Retrieve all students and their enrolled courses, including students without enrollments and courses without students.
select s.student_name,c.course_name
from students s 
left join enrollments e on e.student_id = s.student_id
left join courses c on c.course_id = e.course_id

union

select s.student_name,c.course_name
from students s 
right join enrollments e on s.student_id = e.student_id
right join courses c on c.course_id = e.course_id;

-- 42. List all students and course names using FULL JOIN simulation.

select s.student_name , c.course_name
from students s 
left join enrollments e on e.student_id=s.student_id
left join courses c on c.course_id = e.course_id

union

select s.student_name, c.course_name
from students s 
right join enrollments e on s.student_id = e.student_id
right join courses c on c.course_id = e.course_id;

-- 43. Retrieve all students and course details, including unmatched data.
select s.student_name,c.course_id,c.course_name
from students s 
left join enrollments e on s.student_id = e.student_id
left join courses c on c.course_id = e.course_id

union

select s.student_name,c.course_id,c.course_name
from students s 
right join enrollments e on e.student_id = s.student_id
right join courses c on c.course_id = e.course_id;


-- 44. Retrieve all enrollments, student names, and course names including unmatched students and courses.
select s.student_name,c.course_name,e.enrollment_id
from students s 
left join enrollments e on s.student_id = e.student_id
left join courses c on c.course_id = e.course_id

union

select s.student_name,c.course_name,e.enrollment_id
from students s 
right join enrollments e on s.student_id = e.student_id
right join courses c on c.course_id = e.course_id;

-- 45. List student names with course names for all courses and students.
select s.student_name,c.course_name,e.enrollment_id
from students s 
left join enrollments e on s.student_id = e.student_id
left join courses c on c.course_id = e.course_id 

union 

select s.student_name,c.course_name,e.enrollment_id
from students s 
right join enrollments e on e.student_id = s.student_id
right join courses c on c.course_id = e.course_id;

-- 46. Retrieve all students with courses enrolled and courses without any students using FULL JOIN.

select s.student_name,c.course_name
from students s 
left join enrollments e on s.student_id = e.student_id
left join courses c on c.course_id = e.course_id

union

select s.student_name,c.course_name
from students s 
right join enrollments e on e.student_id = s.student_id
right join courses c on e.course_id = c.course_id;

-- 47. List all courses with enrolled students, including students without courses.
select s.student_name,c.course_name
from students s 
left join enrollments e on e.student_id = s.student_id
left join courses c on c.course_id = e.course_id

union 

select s.student_name,c.course_name
from students s
right join enrollments e on e.student_id = s.student_id
right join courses c on c.course_id = e.course_id;

-- 48. Retrieve all students and courses, showing NULL where there is no match.
select s.student_name,c.course_name
from students s 
left join enrollments e on e.student_id = s.student_id
left join courses c on c.course_id = e.course_id

union 

select s.student_name,c.course_name
from students s
right join enrollments e on e.student_id = s.student_id
right join courses c on c.course_id = e.course_id;

-- 49. Find all students and courses using FULL JOIN simulation for reporting.
select s.student_name,c.course_name
from students s 
left join enrollments e on e.student_id = s.student_id
left join courses c on c.course_id = e.course_id

union 

select s.student_name,c.course_name
from students s
right join enrollments e on e.student_id = s.student_id
right join courses c on c.course_id = e.course_id;

-- 50. Retrieve all students and courses, including students without enrollments and courses without enrollments.

select s.student_name,c.course_name
from students s 
left join enrollments e on e.student_id = s.student_id
left join courses c on c.course_id = e.course_id

union 

select s.student_name,c.course_name
from students s
right join enrollments e on e.student_id = s.student_id
right join courses c on c.course_id = e.course_id;