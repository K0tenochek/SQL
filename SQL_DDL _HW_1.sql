create table employees
(id serial primary key,
employee_name Varchar(50) not null
);

select * from employees;

insert into employees (employee_name) 
VALUES ('Sveta'),
('Sveta'),
('Sveta'),
('Sveta'),
('Sveta'),
('Sveta'),
('Sveta'),
('Sveta'),
('Sveta'),
('Sveta'),
('Sveta'),
('Sveta'),
('Sveta'),
('Sveta'),
('Sveta'),
('Sveta'),
('Sveta'),
('Sveta'),
('Sveta'),
('Sveta'),
('Sveta'),
('Sveta'),
('Sveta'),
('Sveta'),
('Sveta'),
('Sveta'),
('Sveta'),
('Sveta'),
('Sveta'),
('Sveta'),
('Sveta'),
('Sveta'),
('Sveta'),
('Sveta'),
('Sveta'),
('Sveta'),
('Sveta'),
('Sveta'),
('Sveta'),
('Sveta'),
('Sveta'),
('Sveta'),
('Sveta'),
('Sveta'),
('Sveta'),
('Sveta'),
('Sveta'),
('Sveta'),
('Sveta'),
('Sveta'),
('Sveta'),
('Sveta'),
('Sveta'),
('Sveta'),
('Sveta'),
('Sveta'),
('Sveta'),
('Sveta'),
('Sveta'),
('Sveta'),
('Sveta'),
('Sveta'),
('Sveta'),
('Sveta'),
('Sveta');

select * from employees;

SELECT COUNT(1) FROM employees;
insert into employees (employee_name) 
VALUES ('Sveta'),
('Sveta'),
('Sveta'),
('Sveta');

SELECT COUNT(1) FROM employees;
select * from employees;


create table salary 
(id serial  primary key,
monthly_salary Int not null);

select * from salary;

insert into salary (monthly_salary)
values ('1000'),
('1100'),
('1200'),
('1300'),
('1400'),
('1500'),
('1600'),
('1700'),
('1800'),
('1900'),
('2000'),
('2100'),
('2200'),
('2300'),
('2400'),
('2500');

select * from salary;

create table employee_salary
(id Serial  primary key,
employee_id Int not null unique,
salary_id Int not null);

insert into employee_salary (employee_id, salary_id)   
VALUES (3, 7),
(1, 4),
(5, 9),
(40, 13),
(23, 4),
(11, 2),
(52, 10), 
(15, 13),
(26, 4),
(16, 1),
(33, 7);

select * from employee_salary;



create table roles 
(id Serial  primary key,
role_name int not null unique);

ALTER table roles
ALTER COLUMN role_name type varchar(30);

insert into roles (role_name) VALUES ('Junior Python developer'),
('Middle Python developer'),
('Senior Python developer'),
('Junior Java developer'),
('Middle Java developer'),
('Senior Java developer'),
('Junior JavaScript developer'),
('Middle JavaScript developer'),
('Senior JavaScript developer'),
('Junior Manual QA engineer'),
('Middle Manual QA engineer'),
('Senior Manual QA engineer'),
('Project Manager'),
('Designer'),
('HR'),
('CEO'),
('Sales manager'),
('Junior Automation QA engineer'),
('Middle Automation QA engineer'),
('Senior Automation QA engineer');

select * from roles;



create table roles_employee 
(id Serial primary key,
employee_id Int not null unique,
role_id Int not null, 
foreign key (employee_id)
references employees(id),
foreign key (role_id)
references roles(id)
);

insert into roles_employee 
(employee_id, role_id) 
values (7, 2),
(20, 4),
(3, 9),
(5, 13),
(23, 5),
(11, 6),
(40, 7),
(22, 3),
(21, 1),
(41, 8),
(6, 10),
(8, 11),
(9, 12),
(10, 14),
(12, 15),
(13, 16),
(14, 17),
(15, 18),
(25, 19),
(1, 20),
(4, 20),
(16, 18),
(17, 17),
(18, 15),
(19, 14),
(24, 17),
(26, 7),
(27, 8),
(28, 9),
(29, 3),
(30, 3),
(31, 2),
(32, 13),
(33, 4),
(34, 5),
(35, 6),
(36, 7),
(37, 8),
(38, 9),
(39, 4);

DELETE FROM roles_employee WHERE ID <= 11;

select * from roles_employee 

drop table  roles_employee 


