set pagesize 100
set linesize 200

drop table salary;
drop table leave;
drop table employee;
drop table department;
drop table position;

create table department(
department_id number(10),
department_name varchar(20),
primary key(department_id)
);

create table position(
position_id number(10),
position_name varchar(20),
primary key(position_id)
);

create table employee(
employee_id number(10),
first_name varchar(20),
last_name varchar(20),
date_of_birth varchar(20),
gender varchar(10),
contact_number number(15),
email_address varchar(20),
address varchar(30),
department_id number(10),
position_id number(10),
primary key(employee_id),
foreign key (department_id) references department(department_id),
foreign key (position_id) references position(position_id)
);

create table salary(
salary_id number(10),
employee_id number(10),
salary_amount number(10),
effective_date varchar(20),
primary key(salary_id),
foreign key(employee_id) references employee(employee_id)
);

create table leave(
leave_id number(10),
employee_id number(10),
leave_type varchar(20),
start_date varchar(20),
end_date varchar(20),
reason varchar(20),
status varchar(20),
primary key(leave_id),
foreign key(employee_id) references employee(employee_id)
);

--DDL
alter table department add department_alter varchar(20);
alter table department modify department_alter varchar(23);
alter table department rename column department_alter to department_alter2;
alter table department drop column department_alter2;








-- Inserting records into the Department table
INSERT INTO department (department_id, department_name) VALUES (1, 'HR');
INSERT INTO department (department_id, department_name) VALUES (2, 'Finance');
INSERT INTO department (department_id, department_name) VALUES (3, 'IT');
INSERT INTO department (department_id, department_name) VALUES (4, 'Operations');
INSERT INTO department (department_id, department_name) VALUES (5, 'Marketing');
INSERT INTO department (department_id, department_name) VALUES (6, 'Sales');
INSERT INTO department (department_id, department_name) VALUES (7, 'Administration');
INSERT INTO department (department_id, department_name) VALUES (8, 'Customer Service');
INSERT INTO department (department_id, department_name) VALUES (9, 'Research');
INSERT INTO department (department_id, department_name) VALUES (10, 'Quality Assurance');

-- Inserting records into the Position table
INSERT INTO position (position_id, position_name) VALUES(1, 'Manager');
INSERT INTO position (position_id, position_name) VALUES(2, 'Assistant Manager');
INSERT INTO position (position_id, position_name) VALUES(3, 'Supervisor');
INSERT INTO position (position_id, position_name) VALUES(4, 'Executive');
INSERT INTO position (position_id, position_name) VALUES(5, 'Associate');
INSERT INTO position (position_id, position_name) VALUES(6, 'Analyst');
INSERT INTO position (position_id, position_name) VALUES(7, 'Specialist');
INSERT INTO position (position_id, position_name) VALUES(8, 'Coordinator');
INSERT INTO position (position_id, position_name) VALUES(9, 'Officer');
INSERT INTO position (position_id, position_name) VALUES(10, 'Administrator');

-- Inserting records into the Employee table
INSERT INTO employee VALUES(1, 'Nahin', 'Shams', '2001-05-15', 'Male', '1234567890', 'nahin@gmail.com', '123 Ulipur, Kurigram', 1, 1);
INSERT INTO employee VALUES(2, 'Nishat', 'Taaha', '1988-09-23', 'Female', '9876543210', 'taaha@gmail.com', '456 Mirpur, Dhaka', 2, 2);
INSERT INTO employee VALUES(3, 'Sanjukta', 'Sarker', '1985-12-10', 'Female', '5555555555', 'san@gmail.com', '789 Shat Rasta, Khulna', 3, 3);
INSERT INTO employee VALUES(4, 'Marjan', 'Hossain', '1992-07-18', 'Male', '7777777777', 'marjan@hotmail.com', '321 Alipur, Dinajpur', 4, 4);
INSERT INTO employee VALUES(5, 'Rifah', 'Joita', '1993-03-05', 'Female', '2222222222', 'joita@bts.com', '654 Sheorapara, Dhaka', 5, 5);
INSERT INTO employee VALUES(6, 'Ishteak', 'Shupto', '1991-09-30', 'Male', '4444444444', 'shupto@gmail.com', '987 Uttara, Dhaka', 6, 6);
INSERT INTO employee VALUES(7, 'Sayed', 'Sadi', '1994-02-27', 'Male', '6666666666', 'Sadi@gmail.com', '852 Peshwar , Khaibarpakhtun', 7, 7);
INSERT INTO employee VALUES(8, 'Marqus', 'Aurelious', '1989-06-12', 'Male', '1111111111', 'aurelion@gmail.com', '159 Julious, Florench', 8, 8);
INSERT INTO employee VALUES(9, 'Moin', 'Ali', '1990-11-20', 'Male', '3333333333', 'moin@ali.com', '753 Avenue, Park Street', 9, 9);
INSERT INTO employee VALUES(10, 'Emilie', 'Bronte', '1995-08-08', 'Male', '8888888888', 'emilie@gmail.com', '456 Dublin, Dublin', 10, 10);

-- Inserting records into the Salary table
INSERT INTO salary (salary_id, employee_id, salary_amount, effective_date) VALUES(1, 1, 60000, '2024-01-01');
INSERT INTO salary (salary_id, employee_id, salary_amount, effective_date) VALUES(2, 2, 50000, '2024-01-01');
INSERT INTO salary (salary_id, employee_id, salary_amount, effective_date) VALUES(3, 3, 45000, '2024-01-01');
INSERT INTO salary (salary_id, employee_id, salary_amount, effective_date) VALUES(4, 4, 40000, '2024-01-01');
INSERT INTO salary (salary_id, employee_id, salary_amount, effective_date) VALUES(5, 5, 55000, '2024-01-01');
INSERT INTO salary (salary_id, employee_id, salary_amount, effective_date) VALUES(6, 6, 42000, '2024-01-01');
INSERT INTO salary (salary_id, employee_id, salary_amount, effective_date) VALUES(7, 7, 38000, '2024-01-01');
INSERT INTO salary (salary_id, employee_id, salary_amount, effective_date) VALUES(8, 8, 39000, '2024-01-01');
INSERT INTO salary (salary_id, employee_id, salary_amount, effective_date) VALUES(9, 9, 47000, '2024-01-01');
INSERT INTO salary (salary_id, employee_id, salary_amount, effective_date) VALUES(10, 10,51000,'2024-01-01');

-- Inserting records into the Leave table
INSERT INTO leave (leave_id, employee_id, leave_type, start_date, end_date, reason, status) VALUES(1, 1, 'Vacation', '2023-05-01', '2023-05-07', 'Family trip', 'Approved');
INSERT INTO leave (leave_id, employee_id, leave_type, start_date, end_date, reason, status) VALUES(2, 2, 'Sick', '2023-05-10', '2023-05-11', 'Flu', 'Pending');
INSERT INTO leave (leave_id, employee_id, leave_type, start_date, end_date, reason, status) VALUES(3, 3, 'Vacation', '2023-06-15', '2023-06-21', 'Holiday break', 'Approved');
INSERT INTO leave (leave_id, employee_id, leave_type, start_date, end_date, reason, status) VALUES(4, 4, 'Maternity', '2023-07-01', '2023-10-01', 'Maternity leave', 'Pending');
INSERT INTO leave (leave_id, employee_id, leave_type, start_date, end_date, reason, status) VALUES(5, 5, 'Sick', '2023-05-05', '2023-05-06', 'Food poisoning', 'Approved');
INSERT INTO leave (leave_id, employee_id, leave_type, start_date, end_date, reason, status) VALUES(6, 6, 'Vacation', '2023-07-15', '2023-07-25', 'Summer vacation', 'Approved');
INSERT INTO leave (leave_id, employee_id, leave_type, start_date, end_date, reason, status) VALUES(7, 7, 'Sick', '2023-05-20', '2023-05-21', 'Fever', 'Approved');
INSERT INTO leave (leave_id, employee_id, leave_type, start_date, end_date, reason, status) VALUES(8, 8, 'Vacation', '2023-06-10', '2023-06-20', 'Family reunion', 'Approved');
INSERT INTO leave (leave_id, employee_id, leave_type, start_date, end_date, reason, status) VALUES(9, 9, 'Sick', '2023-05-15', '2023-05-16', 'Cold', 'Pending');
INSERT INTO leave (leave_id, employee_id, leave_type, start_date, end_date, reason, status) VALUES(10, 10, 'Sick', '2023-05-30', '2023-05-31', 'Migraine', 'Approved');

--Displaying table data using 'select' command
select * from department;
select * from position;
select * from employee;
select * from salary;
select * from leave;
select * from salary where salary_amount>50000;
select * from employee where department_id=(select department_id from department where department_name='IT');

--Updating Data
update department set department_name='Research etc.' where department_id=9;
update leave set status='Approved' where leave_id=2;
update salary set salary_amount=50000 where employee_id=3;

--Deleting 1 row from the table
INSERT INTO leave VALUES(11,3,'Sick','2023-05-12','2023-05-16','Fever','Approved');
delete from leave where leave_id=11;

--Union, intersect, except
select department_name from department where department_name like '%R' union select department_name from department where department_name like '%M%';

--With clause
with max_salary(val) as (select max(salary_amount) from salary) select * from salary,max_salary where salary.salary_amount=max_salary.val;

--Aggregate functions
select count(*) as TOTAL_NO_OF_DEPT from department;
select avg(salary_amount) as AVERAGE_SALARY from salary;
select sum(salary_amount) as SUM_OF_SALARY from salary;
select max(salary_amount) from salary;
select min(salary_amount) from salary;

--Group by and having
select leave_type,count(employee_id) as TOTAL_NO_OF_EMPLOYEE from leave group by leave_type;
select leave_type,count(employee_id) as TOTAL_NO_OF_EMPLOYEE from leave group by leave_type having count(employee_id)>3;

--Nested subquery
select department_name from department where department_id=
(select department_id from employee where employee_id=
(select employee_id from leave where reason='Flu'));

--set membership(and,or,not)
select * from department where department_name like '%i%' and department_id in (select department_id from employee where employee_id>1);

--some/all/exist/unique
select * from salary where salary_amount> some(select salary_amount from salary where salary_amount>=50000);
select * from salary where salary_amount> all(select salary_amount from salary where salary_amount<= 35000);
select * from salary where salary_amount>=40000 and exists(select * from department where department_name like '%R%');

--string operation
select * from position where position_name like '%r';
select * from position where position_name like 'A%';
select * from position where position_name like '%A__i%';
select * from position where position_name like '%a%r%';
select * from position where position_name like '_______';
select * from position where position_name like '_______' or position_name like '________';

--Join operations
select * from employee natural join leave where employee_id>7;
select first_name,last_name from employee join leave using(employee_id);
select first_name,last_name from employee left outer join leave using(employee_id);
select first_name,last_name from employee right outer join leave using(employee_id);
select first_name,last_name from employee full outer join leave using(employee_id);
select first_name,last_name from employee inner join leave using(employee_id);

--views
create view employee_details as select employee_id,first_name,last_name,gender from employee;
select * from employee_details;
create view  custom as select * from employee_details where employee_id>=3;
select *from custom;











--PL/SQL variable declaration and print value


set serveroutput on
declare
cnt number;
total_salary_cost number;
salary_amount salary.salary_amount%type;
type ARR is VARRAY(10) of salary.salary_amount%type;
S_AMM ARR:=ARR(0,0,0,0,0,0,0,0,0,0);

begin
cnt:=1;
for x in 1..10
loop
select salary_amount into salary_amount from salary where salary_id=x;
S_AMM(cnt):=salary_amount;
cnt:=cnt+1;
end loop;

cnt:=1;
while cnt<=10
LOOP
if S_AMM(cnt)<=40000
then 
S_AMM(cnt):=S_AMM(cnt)+5000;
dbms_output.put_line('Salary incremented 5000 taka. New salary: '||S_AMM(cnt));
else 
dbms_output.put_line('No incrementation done..');

end if;
cnt:=cnt+1;
END LOOP;

end;
/

 --Thank you!! That's all for this database project ...