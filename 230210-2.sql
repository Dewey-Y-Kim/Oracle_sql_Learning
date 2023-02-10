-- trigger : insert delete update 시 발생하는 프로시저
select * from dept;
create or replace trigger print_dname_tr
    before
    update on dept
    for each row -- 행단위 실행, 생략시 문장단위 트리거
    begin
        dbms_output.put_line('변경 전 부서명 : '|| :old.dname);
        dbms_output.put_line('변경 후 부서명 : '|| :new.dname);
    end;
select * from all_triggers order by owner;
update dept set dname='computing' where deptno=15;
select * from dept;


-- emp . insert or update  before  avg sal

create or replace Trigger avg_trigger
    before
    update or insert on emp
    declare
        avg_sal number;
    begin
        select round(avg(sal),2) into avg_sal from emp;
        dbms_output.put_line('급여의 평균 : '|| avg_sal);
end;

select * from all_triggers where owner=upper('scott');
drop trigger avg_trigger;
    update emp set sal=1000 where empno=7900;
    SELECT avg(sal) from emp;
    select * from emp;
    update emp set sal=700 where empno=9000;
    insert into emp(empno, ename,job,mgr,hiredate,sal,comm,deptno)
    values (1235, 'kang', 'SALESMAN', 1234,sysdate,1000,200,40);