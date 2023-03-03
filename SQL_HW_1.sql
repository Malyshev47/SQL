1) Таблица employees

Создать таблицу employees
- id. serial,  primary key,
- employee_name. Varchar(50), not null
Наполнить таблицу employee 70 строками.

create table employees(
	id serial primary key,
	employee_name varchar(50) not null
);

insert into employees(employee_name)
values ('Natalie'),
       ('Nicola'),
       ('Olivia'),
       ('Penelope'),
       ('Jake'),
       ('Rachel'),
       ('Rebecca'),
       ('Rose'),
       ('Ruth'),	 
       ('Sally'),
       ('Connor'),
       ('Charlie'),
       ('Ethan'),
       ('David'),
       ('Richard'),
       ('Joseph'),
       ('Charles'),
       ('Thomas'),
       ('Ruth'),	 
       ('James'),
       ('Oliver'),
       ('Jack'),
       ('Harry'),
       ('Jacob'),
       ('Charlie'),
       ('Thomas'),
       ('George'),
       ('Oscar'),
       ('James'),	 
       ('William'),
       ('Jake'),
       ('Connor'),
       ('Callum'),
       ('Kyle'),
       ('Joe'),
       ('Reece'),
       ('Rhys'),
       ('Charlie'),
       ('Damian'),	 
       ('Noah'),
       ('Liam'),
       ('Mason'),
       ('William'),
       ('Ethan'),
       ('Michael'),
       ('Alexander'),
       ('Daniel'),
       ('Robert'),
       ('Ruth'),	 
       ('Sally'),
       ('Natalie'),
       ('Nicola'),
       ('Mark'),
       ('Penelope'),
       ('Christopher'),
       ('Rachel'),
       ('Joseph'),
       ('Rose'),
       ('Ruth'),	 
       ('Sally'),
       ('Kevin'),
       ('Andrew'),
       ('Olivia'),
       ('Penelope'),
       ('Pippa'),
       ('Steven'),
       ('Ronald'),
       ('Timothy'),
       ('Gary'),	 
       ('Eric');

2) Таблица salary

Создать таблицу salary
- id. Serial  primary key,
- monthly_salary. Int, not null
Наполнить таблицу salary 15 строками:
- 1000
- 1100
- 1200
- 1300
- 1400
- 1500
- 1600
- 1700
- 1800
- 1900
- 2000
- 2100
- 2200
- 2300
- 2400
- 2500

create table salary(
	id serial primary key,
	monthly_salary int not null
);

insert into salary(monthly_salary)
values (1000),
       (1100),
       (1200),
       (1300),
       (1400),
       (1500),
       (1600),
       (1700),
       (1800),
       (1900),
       (2000),
       (2100),
       (2200),
       (2300),
       (2400),
       (2500);
      
3) Таблица employee_salary

Создать таблицу employee_salary
- id. Serial  primary key,
- employee_id. Int, not null, unique
- salary_id. Int, not null
Наполнить таблицу employee_salary 40 строками:
- в 10 строк из 40 вставить несуществующие employee_id

create table employee_salary(
	id serial primary key,
	employee_id int not null,
	salary_id int not null
);

insert into employee_salary(employee_id, salary_id)
values     (1, 1),
	   (2, 2),
	   (3, 3),
	   (4, 4),
	   (5, 5),
	   (6, 6),
	   (7, 7),
	   (8, 8),
	   (9, 9),
	   (10, 10),
	   (11, 11),
	   (12, 12),
	   (13, 13),
	   (14, 14),
	   (15, 15),
	   (16, 1),
	   (17, 2),
	   (18, 3),
	   (19, 4),
	   (20, 5),
	   (21, 6),
	   (22, 7),
	   (23, 8),
	   (24, 9),
	   (25, 10),
	   (26, 11),
	   (27, 12),
	   (28, 13),
	   (29, 14),
           (30, 15),
	   (71, 1),
	   (72, 2),
	   (73, 3),
	   (74, 4),
	   (75, 5),
	   (76, 6),
	   (77, 7),
	   (78, 8),
	   (79, 9),
	   (80, 10);

4) Таблица roles

Создать таблицу roles
- id. Serial  primary key,
- role_name. int, not null, unique
Поменять тип столба role_name с int на varchar(30)
Наполнить таблицу roles 20 строками:


create table roles(
	id serial primary key,
	role_name int unique not null
);

alter table roles 
alter column role_name type varchar(30)

select column_name, data_type from information_schema.columns
where table_name = 'roles';

insert into roles (role_name)
values     ('Junior Python developer'),
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

5) Таблица roles_employee

Создать таблицу roles_employee
- id. Serial  primary key,
- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
Наполнить таблицу roles_employee 40 строками:

create table roles_employee(
	id serial primary key,
	employee_id int unique not null,
	foreign key (employee_id)
		references employees(id),
	role_id int not null,
	foreign key (role_id)
		references roles(id)
);
	  
insert into roles_employee (employee_id, role_id)
values     (1,1),
	   (2,2),
	   (3,3),
	   (4,4),
	   (5,5),
	   (6,6),
	   (7,7), 
	   (8,8),
	   (9,9),
	   (10,10),
	   (11,11),
	   (12,12),
	   (13,13),
	   (14,14),
	   (15,15),
	   (16,16), 
	   (17,17),
	   (18,18),
	   (19,19),
	   (20,20),
	   (21,1),
	   (22,2),
	   (23,3),
	   (24,4),
	   (25,5),
	   (26,6),
	   (27,7), 
	   (28,8),
	   (29,9),
	   (30,4),
	   (31,1),
	   (32,2),
	   (33,3),
	   (34,4),
	   (35,5),
	   (36,6),
	   (37,7),
	   (38,8), 
	   (39,9),
	   (40,4);



select * from roles_employee

