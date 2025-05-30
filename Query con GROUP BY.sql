use db_university;

select year(enrolment_date), count(id)
from students
group by year(enrolment_date)
order by year(enrolment_date);

select office_address, count(id)
from teachers
group by office_address;

select exam_id, avg(vote)
from exam_student
group by exam_id;

select department_id, count(id)
from degrees
group by department_id;