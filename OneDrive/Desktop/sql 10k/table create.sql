use 10k;

create table student(
std_id int primary key ,
std_name varchar(60),
std_age int,
std_gender char(1),
std_phno varchar(10) check(char_length(std_phno)=10),
c_id int,
foreign key (c_id) references course(c_id)
);

desc student;

create table course(
c_id int primary key,
c_name varchar(20) unique,
c_duration int,
c_category varchar(10) default 'demo'
);


desc course;

insert into student values
(586,'vishnu',22,'m','9381995548',101);

select * from student;

insert into course  values
(101,'python full stack',6,default);

select * from course;
 
create table stu(
std_id int not null ,
std_name varchar(60) primary key,
std_age int,
std_gender char(1),
std_phno varchar(10) check(char_length(std_phno)=10),
c_id int,
foreign key (c_id) references course(c_id)
);

insert into stu values
(586,'vishnu',22,'m','9381995548',101);

create table cour(
c_id int primary key,
c_name varchar(20) unique,
c_duration int,
c_category varchar(10) default 'demo'
);

desc cour;


insert into cour values
(102,'java full stack',6, 'offline');

insert into stu values
(11, 'vishnu', 22, 'm', '6598523585', 102);

desc cour;

select * from cour;
select * from stu ;