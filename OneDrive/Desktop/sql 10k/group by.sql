-- group by clause 
use empdb;
select * from emp;
-- WAQTD TOTAL NO. OF EMPLOYEES WORKING IN EACH DEPT WHO ARE NOT WORKING AS PRSIDENT
select count(*),deptno from emp 
where job !=('president')
group by deptno ;
-- WAQTD MAXIMUM SALARY OF EACH DEPT.
select max(sal),deptno from emp
group by deptno ;
-- WAQTD NO. OF EMPLOYEES WORKING IN EACH DEPT AS MANAGER
select count(*),deptno from emp
where job='manager'
group by deptno;
-- WAQTD number of employees in each department who are earning more than 2000
select  count(*),deptno from emp
where sal>2000
group by deptno ;
-- WAQTD department-wise total salary of employees whose job is SALESMAN.
select sum(sal),deptno from emp
where job='salesman'
group by deptno;
-- WAQTD job-wise count of employees where department number is 30
select count(*),job from emp
where deptno=30
group by job;
-- WAQTD department-wise count of employees where commission is NOT NULL
select count(*),deptno from emp
where comm is not null 
group by deptno ;
-- WAQTD job-wise total salary where employee name starts with 'A'
select sum(sal),job,ename from emp
where ename like 'a%'
group by job,ename;
-- WAQTD department-wise count of employees where salary is between 1000 and 3000
select count(*) ,deptno from emp
where sal between 1000 and 3000
group by deptno;

