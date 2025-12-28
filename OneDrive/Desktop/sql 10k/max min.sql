use empdb; 
select ename from emp where empno =(select mgr from emp where empno=( select mgr from emp where ename='allen')); 
-- waqtd third minimum salary.
select min(sal) from emp where sal>(select min(sal) from emp where sal>(select min(sal) from emp));
select sal from emp
order by (sal);
-- waqtd details of emp who is earning second maximum salary.
select * from emp where sal=(select max(sal) from emp where sal<(select max(sal) from emp));
-- waqtd details of employee who is hired third in the company.
select * from emp where hiredate=(select min(hiredate) from emp where hiredate>(select min(hiredate) from emp where hiredate>(select min(hiredate) from emp)));
-- waqtd seventh maximum salary.
 select sal from emp order by sal limit 1 offset 6 ;
-- waqtd department name of employee who are earning fifth maximum salary.
select dname from dept where deptno=(select deptno from emp where sal=( select max(sal) from emp limit 1 offset 4 ));
select dname from dept where deptno=(select deptno from emp where sal=(select max(sal)from emp where sal<(select max(sal)from emp where sal<(select max(sal)from emp where sal<(
select max(sal)from emp where sal<(select max(sal)from emp ))))));
-- waqtd manager of smith

-- waqtd name of managers manager of allen

-- waqtd department details of the manager of clark.

-- waqtd name of employee hired before the last employee

-- waqtd details of employees who are reporting to employee hired on 1981-11-17.

-- waqtd number of employees reporting to ford's manager.
