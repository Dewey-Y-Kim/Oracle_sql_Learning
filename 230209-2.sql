--if

create or replace procedure emp_if( i_empno emp.empno%type)
is
    s_ename emp.ename%type;
    s_deptno emp.deptno%type;
    s_dname varchar(30);
begin
select ename, deptno into s_ename, s_deptno from emp where empno= i_empno;

if ( s_deptno = 10) then
    s_dname := '회계부서입니다.';
    elsif (s_deptno = 20) then
    s_dname := '연구부서입니다.';
    elsif (s_deptno= 30) then
    s_dname := '영업부서입니다.';
    elsif (s_deptno= 40) then
    s_dname := '운영부서입니다.';
    else s_dname := '부서가 없습니다.';
    end if;
    dbms_output.put_line(s_ename||'님은 '||s_dname);
end;
execute emp_if(7499);
select * from dept;
select * from emp;

select * from user_source;