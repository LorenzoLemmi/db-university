use db_university;

select st.degree_id, st.surname
from students st
join degrees deg on deg.id = st.degree_id
where deg.name = "Corso di Laurea in Economia";

select deg.name, deg.department_id
from degrees deg
join departments dep on dep.id = deg.department_id
where dep.name = "Dipartimento di Neuroscienze"
and deg.level = "magistrale";

select cou.name, cou.description
from courses cou
join course_teacher cou_teac on cou_teac.course_id = cou.id
where cou_teac.teacher_id = 44;

select stu.name, stu.surname, deg.name, dep.name
from students stu
join degrees deg on deg.id = stu.degree_id
join departments dep on dep.id = deg.department_id
order by stu.surname, stu.name;

select deg.name, cou.name, teac.name, teac.surname
from degrees deg
join courses cou on cou.degree_id = deg.id
join course_teacher cou_teac on cou_teac.course_id = cou.id
join teachers teac on teac.id = cou_teac.teacher_id
order by deg.name;

select distinct teac.name, teac.surname, dep.name
from teachers teac
join course_teacher cou_teac on cou_teac.teacher_id = teac.id
join courses cou on cou.id = cou_teac.course_id
join degrees deg on deg.id = cou.degree_id
join departments dep on dep.id = deg.department_id
where dep.name = "Dipartimento di Matematica";

select s.id, s.name, s.surname, c.name, count(es.vote) as "numero tentativi", max(es.vote) as voto_massimo
from students as s
join exam_student as es on s.id = es.student_id
join exams as e on es.exam_id = e.id
join courses as c on e.course_id = c.id
group by s.id, c.id having voto_massimo >= 18;