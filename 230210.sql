create or replace procedure c_dept(deptnum dept.deptno%type)
is
    -- 배열 생성
    -- 사원명
    type ename_arr is table of emp.ename%type index by binary_integer;
    type sal_arr is table of emp.sal%type index by binary_integer;
    type hiredate_arr is table of emp.hiredate%type index by binary_integer;
    -- 배열형 변수 선언
    s_ename ename_arr;
    s_sal sal_arr;
    s_hiredate hiredate_arr;
    idx integer := 0;
begin
    --
    for f in (Select ename, sal, hiredate from emp where deptno=deptnum) loop
        idx := idx +1;
        s_ename(idx) := f.ename;
        s_sal(idx) := f.sal;
        s_hiredate(idx) :=f.hiredate;
    end loop;
    
    for i in 1..idx loop
        dbms_output.put_Line(S_ename(i)||'   '|| S_sal(i)|| '    ' ||S_hiredate(i));
    end loop;
end;
set serveroutput on;
execute c_dept(20);



create or replace procedure loop_insert(i_start in number, i_deptno in emp.deptno%type)
is
    i number;
begin
    i := i_start;
    loop
        insert into emp(empno, ename, deptno, job) values(i, 'loop'||i, i_deptno,'intern');
        i := i+1;
        exit when i>i_start+5;
    end loop;
    dbms_output.put_line('사원 입력 완료');
end;

select * from emp where deptno=20;


rollback;
select * from emp where deptno=20;

-- while loop

create or replace procedure emp_while_insert(i_max number, i_deptno emp.deptno%type)
is
    v_i number;
begin
    v_i := i_max-10;
    -- 90~100 실행
    while v_i<i_max loop
        insert into emp(empno, ename, hiredate, deptno)
        values ( v_i, 'while'||v_i, sysdate, i_deptno);
        exit when v_i>=i_max-5;
        v_i := v_i + 1;
    end loop;
end;

execute emp_while_insert(9100, 30);
rollback;
select * from emp where deptno=20;


-- 프로시저 지우기
select distinct name from user_source;
drop PROCEDURE insert_emp;

-- 담당 업무를 입력받아 해당 사원의 사원번호 사원명 담당업무, 급여를 출력하는 프로시저 만들기
-- excute name('manager')


create or replace procedure job_finder(str varchar)
is
type job_t is record(
    empN emp.ename%type;
    emNum emp.empno%type;
    sal emp.sal%type)
    type ejob is table of job_t%type index by binary integer;
    idx number;
    finder ejob;
begin
    for e in (select empno, ename, sal from emp where job=upper(str)) loop;
    idx := idx +1;
    select empno, ename, sal
    
    
    
create or replace procedure job_finder(str varchar)
is
begin
    for s in (select empno, ename, sal from emp where upper(str)=job ) loop
        dbms_output.put_line(s.empno|| '  ' ||s.ename || '  ' || str || '  ' || s.sal);
    end loop;
end;
    
exec job_finder('salesman');