SQL_DDL
Первая часть.

Таблица employees

1)	Создать таблицу employees
- id. serial,  primary key,
- employee_name. Varchar(50), not null

create table employees
(id serial primary key,
employee_name Varchar(50) not null
);

2)	Наполнить таблицу employee 70 строками.

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

3. Создать таблицу salary
id. Serial  primary key,
monthly_salary. Int, not null

create table salary 
(id serial  primary key,
monthly_salary Int not null);

4. Наполнить таблицу salary 15 строками

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

5)	Создать таблицу employee_salary
id. Serial  primary key,
employee_id. Int, not null, unique
salary_id. Int, not null

create table employee_salary
(id Serial  primary key,
employee_id Int not null unique,
salary_id Int not null);

6)	Наполнить таблицу employee_salary 40 строками:
- в 10 строк из 40 вставить несуществующие employee_id

insert into employee_salary(employee_id, salary_id)
values (1, 15),
	(2, 14),
	(3, 13),
	(4, 12),
	(5, 11),
	(6, 10),
	(7, 9),
	(8, 8),
	(9, 7),
	(10, 6),
	(11, 5),
	(12, 4),
	(13, 3),
	(14, 2),
	(15, 1),
	(71, 15),
	(82, 14),
	(93, 13),
	(72, 12),
	(83, 11),
	(16, 10),
	(17, 9),
	(18, 8),
	(19, 7),
	(20, 6),
	(21, 5),
	(22, 4),
	(23, 3),
	(24, 2),
	(25, 1),
	(65, 15),
	(66, 14),
	(67, 13),
	(68, 12),
	(55, 11),
	(77, 10),
	(85, 9),
	(79, 8),
	(88, 7),
	(99, 6);

7)	Создать таблицу roles
 id. Serial  primary key,
 role_name. int, not null, unique

create table roles 
(id Serial  primary key,
role_name int not null unique);

8)	Поменять тип столба role_name с int на varchar(30)

ALTER table roles
ALTER COLUMN role_name type varchar(30);

9)	Наполнить таблицу roles 20 строками:

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

10)	Создать таблицу roles_employee
id. Serial  primary key,
employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
role_id. Int, not null (внешний ключ для таблицы roles, поле id)

create table roles_employee 
(id Serial primary key,
employee_id Int not null unique,
role_id Int not null, 
foreign key (employee_id)
references employees(id),
foreign key (role_id)
references roles(id)
);

11)	Наполнить таблицу roles_employee 40 строками:

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



