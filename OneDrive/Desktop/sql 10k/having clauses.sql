-- having clauses


use empdb;
select * from emp;
-- WAQTD NO. OF EMPLOYEES WORKING IN EACH DEPT IF THERE ARE MORE THAN 2 EMPLOYEES ARE WORKING.
select count(*),deptno from emp
group by deptno
having DEPTNO>2;
-- WAQTD NO. OF EMPLOYEES WORKING IN EACH DEPT WHO’S HAVING CHARACTER ‘S’ IN THEIR DESIGNATION AND MAXIMUM SALARY OF THAT DEPT EXCEEDS 2900
select count(*) ,deptno,sal from emp
where job like '%s%'
group by deptno,sal
having max(sal) >2900;
-- WAQTD department number and total salary of each department if total salary is greater than 9000.
select max(sal),deptno from emp
group by deptno 
having max(sal)>9000;
-- WAQTD job and count of employees for each job where more than 2 employees are working
select count(*),job from emp
group by job
having count(*) >2;
-- WAQTD department number and average salary of each department if average salary is more than 2500.
select avg(sal),deptno from emp
group by deptno 
having avg(sal)>2500;
-- WAQTD department number and number of clerks in each department if the count of clerks is more than 1.
select count(*),deptno from emp
where job='clerk'
group by deptno 
having  count(*)>1;
-- WAQTD department number and minimum salary in each department if the minimum salary is less than 1000.
select min(sal),deptno from emp
group by deptno
having min(sal) <1000;
-- WAQTD job and average salary of employees where the job has more than 1 employee and average salary exceeds 2000.
select avg(sal),job from emp
group by job
having avg(sal)>2000;
-- WAQTD department number and average commission if average commission is not NULL and greater than 500.
select avg(comm),deptno from emp
where comm is not null 
group by deptno 
having avg(sal) > 500;
-- WAQTD job and maximum hire date (latest employee) where more than one employee exists for that job.
select max(hiredate),job from emp
group by job 
having max(HIREDATE)>1;
