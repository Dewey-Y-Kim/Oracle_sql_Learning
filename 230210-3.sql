--cursor

select * from emp;

select e.job, avg(e.sal) from emp e join dept d
on e.deptno=d.deptno and e.deptno = 30 group by e.job;

-- 부서코드 입력 해당부서 업무별 급여의 합, 급여의 평균, 사원수, 최고급여, 최저급여를 구하는 프로시져
update emp set JOB='INTERN' where job is null;
create or replace procedure emp_info(i_deptno emp.deptno%type)
is
    -- 커서 선언
    cursor j_summary is
        select job, Sum(e.sal) sal_sum, avg(e.sal) avg_sal , count(e.empno) num, max(e.sal) max_sal, min(e.sal) min_sal from emp e
        where e.deptno=i_deptno group by e.job;
    -- 선택한 값을 저장할 변수
    v_job emp.job%type;
    v_sum number;
    v_avg number;
    v_cnt number;
    v_max emp.sal%type;
    v_min emp.sal%type;
begin
    -- cursor
    open j_summary;
    -- fetch
    loop
        fetch j_summary into v_job, v_sum, v_avg, v_cnt, v_max, v_min;
        exit when j_summary%NOTFOUND;
        dbms_output.put_line(v_job||' '||v_sum||'  '||v_avg||' '||v_cnt||' '||v_max||' '||v_min);
    end loop;
    --4. 닫기
    close j_summary;
    dbms_output.put_line('이상 보고끝');
end;
exec emp_info(20);
show user;
select * from user_source;
