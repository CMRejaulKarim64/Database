--ans: 1
create table emp1287759(
eid number(7),
ename varchar2(30),
salary number(8),
hire_date date,
address varchar2(50),
constraint emp128775_id_pk primary key(eid)
);
--drop table emp1287759;

--  ans:2
alter table emp1287759 add(
department_id number(7),
dept_name varchar2(20)
);
-- ans:3
 INSERT INTO emp1287759 (eid, ename, salary, hire_date,
 address, department_id, dept_name)
VALUES (&eid, '&ename', &salary, TO_DATE('&hire_date', 'YYYY-MM-DD'),
'&address', &department_id, '&dept_name');

INSERT INTO emp1287759 (eid, ename, salary, hire_date,
address, department_id, dept_name)
VALUES (&eid, '&ename', &salary, TO_DATE('&hire_date', 'YYYY-MM-DD'), 
'&address', &department_id, '&dept_name');

-- ans :4
create view emp1287 
as select ename, dept_name, salary
from emp1287759
where department_id = 80;

-- ans: 5
insert into emp1287759 (eid, ename, salary, hire_date, 
address, department_id, dept_name)
select employee_id, last_name, salary, hire_date,
street_address,department_id, department_name
from employees natural join departments natural join locations
where department_id = 80;

-- ans :6
create sequence emp20_seq
start with 500
increment by 10
maxvalue 99999
nocache
nocycle;



select * from emp1287759;