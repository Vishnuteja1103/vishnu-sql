-- aasigment 6
use empdb;
select * from emp;
-- 1.	Waqtd no. of employees getting salary less than 2000 in department 10.
select count(*) from emp 
where deptno=10 and sal<2000;
-- 2.	Waqtd total salary needed to pay to employees who are working as clerk.
select sum(sal),job from emp
where job='clerk';
-- 3.	Waqtd average salary needed to pay all the employees
select avg(sal) from emp;
-- 4.	Waqtd no. of employees having ‘a’ as their first character.
select count(*) from emp
where ename like 's%';
-- 5.	Waqtd no. of employees working as clerk or manager.
select count(*) from emp 
where job in ('clerk','manager');
-- 6.	Waqtd total salary needed to pay employees hired in feb.
select sum(sal),hiredate from emp 
where month(hiredate)=2
group by HIREDATE;
--  7.	Waqtd no. of employees reporting to 7839.
select count(*),mgr from emp 
where mgr=7839;
-- 8.	Waqtd no. of employees getting commission in department 30.
select count(*)from emp 
where comm is not null and deptno in(30) ;
-- 9.	Waqtd average salary, total salary and no. of employees along with maximum salary given to employees working as president.
select avg(sal),sum(sal),count(*),max(sal) from emp
where job='president';
-- 10.	Waqtd no. of employees having ‘a’ in their names.
select count(*) from emp
where ename like '%a%';
-- 11.	Waqtd no. of employees and total salary needed to pay the employees who have consecutive L’s in their names.
select count(*),sum(sal) from emp
where ENAME not like '%l%';
-- 12.	Waqtd no. of departments present in employee table.
select count(distinct deptno) from emp;
-- 13.	Waqtd no. of employees having character ‘z’ in their name. 
select count(*) from emp
where ename like '%z%';
-- 14.	Waqtd no. of employees having ‘@’ in their names.
select count(*) from emp
where ename like '%@%';
-- 15.	Waqtd total salary given to employees working as clerk in department 30.
select sum(sal) from emp 
where job='clerk' and deptno=30;
-- 16.	Waqtd maximum salary given to the employees working as analyst.
select max(sal) from emp 
where job='analyst';
-- 17.	Waqtd no. of distinct salaries present in employee table.
select count(distinct sal) from emp;
-- 18.	Waqtd no. of jobs present in employee table.
select count(distinct job) from emp;
-- 19.	Waqtd average salary given to the clerk.
select avg(sal) from emp
where job='clerk';
-- 20. waqtd minimum salary given to employee who are working in department 10 as manager, clerk.
select min(sal) from  emp 
where job in ('manager','clerk') and deptno=10;
-- 21.	Waqtd no. of employees earning less than 2900. 
select count(*) from emp 
where sal < 2900; 