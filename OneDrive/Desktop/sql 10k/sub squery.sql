-- subquery
use empdb;
select * from emp;
-- WAQTD DETAILS OF EMP WHOSE SAL IS MAX.
select * from emp 
where sal=(select max(sal) from emp);
-- WAQTD names of the EMPLS who are working in same department as ALLEN is working.
select ename from emp
where deptno=(select deptno from emp
where ename='allen');
-- WAQTD details of the EMPLS who are earning > BLAKE.
select * from emp
where sal>(select sal from emp
where ename='blake');
-- WAQTD name, HIREDATE, DEPTNO of EMPLS who are HIRED after ALLEN.
select ename,hiredate,deptno from emp
where hiredate>(select hiredate from emp 
where ename ='allen');
-- WAQTD who are working as a Salesman in the same dept of WARD.
select ename,job,deptno from emp
where job='salesman'and 
deptno=(select deptno from emp where ename='ward');

-- WAQTD details of the EMPLS who are Earning in range of 1000 to 3000 AND hired after smith.
select * from emp
where sal between 1001 and 2999 and hiredate>(select hiredate from emp where ename='smith');
-- WAQTD NAMES, HIREDATE of EMPLS who are not earning COMM, earning SAL > MILLER AND working as SALESMAN, ANALYST, PRESIDENT or Manager.
select ename,hiredate,comm,job from emp
where comm is null and sal>(select sal from emp where ename ='miller')
 and  job in ('salesman','analyst','president','manager');
-- WAQTD details of EMPLS who are earning SAL MORE than SMITH, Less than SCOTT hired after ALLEN But before ADAMS.
select * from emp 
where sal>(select sal from emp where ename='smith') and sal>(select sal from emp where ename='scott')
 and hiredate<(select hiredate from emp where ename='allen') and hiredate<(select hiredate from emp where ename='adams');
-- WAQTD details of the EMPLS whose name contains char 'A' or char 'O' they are hired after SMITH, But before SCOTT & SAL < KING, AND working as a salesman, clerk or ANALYST.
select * from emp 
where (ename like'%A%' or ename like'%o%') and hiredate>(select hiredate from emp where ename='smith') and hiredate<(select hiredate from emp where ename='scott')
 and sal<(select sal from emp where ename='king') and job in ('salesman','clerk','analyst');
-- WAQTD details of EMPS who’s having EMPNO > ALLEN But EMPNO < MILLER & Hired after SMITH but before ADAMS &
--  Earning SAL greater than JAMES but Less than KING & their Job contains char 'E' or 'S'.
select * from emp 
where deptno>(select deptno from emp where ename='miller') and hiredate>(select hiredate from emp where ename='smith') and 
hiredate<(select hiredate from emp where ename='adams')and sal>(select sal from emp where ename ='james')
 and sal<( select sal from emp where ename='king') and (job like '%e%' or job like'%s%');
 
 
 -- case 2 
  use empdb;
 select * from dept;
 select * from emp;
 -- -- WAQTD DETAILS OF EMPLS WHO ARE WORKING IN sales DEPT.
select * from emp
where deptno=(select deptno from dept where dname='sales');
-- WAQTD DETAILS OF EMPLS WHO ARE WORKING IN RESEARCH DEPT.
select * from emp
where deptno=(select deptno from dept where dname='research');
-- WAQTD NAMES OF EMPLS WHO ARE WORKING IN LOC NEW YORK.
select ename from emp 
where deptno=(select deptno from dept where loc ='new york'); 
-- WAQTD DETAILS OF EMPLS WHO ARE WORKING IN ACCOUNTING DEPT AND SAL>1000.
select * from emp where deptno=(select deptno from dept where dname='accounting') and sal>1000;
-- WAQTD NAMES ALONG WITH SAL OF EMPLS WHOSE SAL > MILLER AND WORKING IN LOC NEW YORK.
select ename ,sal from emp
where sal>(select sal from emp where ename='miller') and deptno=(select deptno from dept where loc='new york');
-- WAQTD DETAILS OF EMPLS WHO ARE HIRED AFTER ALLEN IN DEPT RESEARCH.
select * from emp 
where hiredate>(select hiredate from emp where ename ='allen') and deptno=(select deptno from dept where dname='research');

-- single-row subquery:
-- ---------------------
-- WAQTD DNAME OF SMITH.
select ename from emp where ename='smith'and deptno=(select deptno from dept where dname='smith');

-- WAQTD employees earning more salary than ALLEN.
select * from emp where sal>(select sal from emp where ename='allen');
-- WAQTD employees earning less salary than KING.
select * from emp where sal<(select sal from emp where ename='king');
-- WAQTD employees who were hired after SMITH.
select * from emp where hiredate>(select hiredate from emp where ename='smith');
-- WAQTD employees whose salary is greater than JAMES but less than KING.
select * from emp where sal>(select sal from emp where ename='james') and  sal<(select sal from emp where ename='king');
-- WAQTD employees who work in the same department as SCOTT.
select * from emp where deptno=(select deptno from emp where ename='scott');
-- WAQTD employees whose manager is the same as BLAKE’s manager.
select * from emp where job=(select job from emp where ename='blake');
-- WAQTD employees whose salary is equal to FORD’s salary.
select * from emp where sal=(select sal from emp where ename='ford');
-- WAQTD employees who were hired before ADAMS.
select * from emp where hiredate<(select hiredate from emp where ename='adams');
-- WAQTD employees working in the same department as MILLER.
select * from emp where deptno=(select deptno from emp where ename='miller');
-- WAQTD employees whose salary is greater than the average salary of the company.
select* from emp where sal>(select avg(sal) from emp);
select hiredate from emp where hiredate<any(select hiredate from emp where job='manager');

#mutirow subquery
-- WAQTD DETAILS OF EMPLS WHOSE DNAME CONTAINS CHAR ‘A’.
select * from emp where deptno in (select deptno from dept where dname like '%a%');
select dname from dept;
-- WAQTD DETAILS OF THE EMPLS WHO ARE WORKING IN LOC NEW YORK OR DALLAS.
select * from emp where deptno in (select deptno from dept where loc in('new york','dallas'));
-- WAQTD DNAME OF THE EMPLS WHO ARE WORKING AS MANAGER.
select dname from dept where deptno in (select deptno from emp where job='manager');
-- WAQTD employees who work in departments where CLERKs are working.
select * from emp where deptno in (select deptno from dept where job='clerk');
-- WAQTD employees whose salary is greater than ANY salesman’s salary.
select * from emp where sal>any (select sal from emp where job='salesman');
-- WAQTD employees whose salary is greater than ALL salesman’s salaries.
select * from emp where sal>all (select sal from emp where job='salesman');
-- WAQTD employees who are working under any manager.
select * from emp where job<any(select job from emp where job='manager');
-- WAQTD employees whose job is same as employees working in department 30.
select *from emp where job= any (select job from emp where deptno=30);
-- WAQTD employees whose salary matches any salary of employees in department 20.
select *from emp where sal= any (select sal from emp where deptno=20);
-- WAQTD employees who work in departments where MANAGERs are working.
select * from emp where deptno=all(select deptno from dept where job='manager');
select deptno from emp where job='manager';
-- WAQTD employees who are not managers (use subquery).
select * from emp where job !=all(select job from emp where job='manager');
-- WAQTD employees whose manager works in department 30.
select * from emp where deptno=all(select deptno from emp where deptno=30)and job='manager';
-- WAQTD employees whose salary is less than ALL salaries of employees in department 10.
select * from emp where sal<all(select sal from emp where deptno in(10));