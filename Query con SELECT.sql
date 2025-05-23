use db_university;
select id
from students
where year(date_of_birth) = "1990";

select id
from courses
where cfu > 10;

select id
from students
where (year(curdate()) - year(date_of_birth)) > 30;

select id
from courses
where year = 1
and period = "I semestre";

select id
from exams
where date = "2020-06-20"
and hour > "14:00:00";

select id
from degrees
where level = "magistrale";

select count(*)
from departments;

select count(*) 
from teachers
where phone is null;