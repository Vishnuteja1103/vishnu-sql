-- order by 
use empdb;
select * from emp;
-- WAQTD DETAILS OF EMPLOYEES ACCORDING THEIR SALARY IN ASCENDING ORDER
select * from emp
order by sal;
-- WAQTD NAMES OF EMPLOYEES IN ASCENDING ORDER.
select * from emp 
order by ename ;
-- WAQTD NAMES AND SALARIES OF EMPLOYEES ARRANGE THE RECORDS BASED ON THEIR NAMES IN ASCENDING AND SALARIES IN DESCENDING ORDER.
select ename ,sal from emp
order by ename asc, sal desc;
-- WAQTD NO. OF EMPLOYEES WORKING IN EACH DEPT ORDER BY NO. OF EMPLOYEES IN DESCENDING ORDER.
select count(*),deptno from emp
group by deptno
order by count(*) desc;
-- WAQTD NO. OF EMPLOYEES WORKING IN EACH JOB IF THEY ARE EARNING SALARY GREATER THAN 1000 AND ARRANGE THE RECORDS IN DESCENDING ORDER.
select count(*),job from emp 
where sal >1000
group by job 
order by count(*) desc;
-- WAQTD employee name and department number ordered by department number (ascending) and employee name (descending).
select ename,deptno from emp
order by deptno asc,ename desc;
-- WAQTD employee name and salary ordered by salary descending, and if salary is same, order by employee name ascending.
select ename,sal from emp
order by sal desc,ename asc;
-- WAQTD employees of department 30 ordered by salary ascending.
select * from emp
where deptno =30
order by sal asc;