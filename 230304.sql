explain plan;
select * from tab;
desc emp;
desc dept;
explain Plan
set statement_id= 'test1' Into Plan_table for 
select /*+use_nl(e d)*/ e.ename, e.deptno, d.dname From emp e, dept d where e.deptno = d.deptno;
select * from tab;
set autotrace;
select * from Plan_table;
select * from table(dbms_xplan.display ('plan_table','test1','all'));


/*
set auto trace
한번 실행 - > 여러개 실행계획을 볼 수 있다.
*/

Set autotrace on;
select e.ename, e.deptno, d.dname from emp e, dept d where e.deptno=d.deptno;
Set autoTrace on Explain;
Set autoTrace on Statistics;
Set autoTrace TraceOnly;
Set AutoTrace TraceOnly Explain;
Set AutoTrace TraceOnly Statistics;
Set AutoTrace off;

Analyze table emp compute statistics;
analyze table emp estimate statistics sample 10 percent;
Analyze table emp Estimate statistics sample 3 rows;

Select table_name, num_rows, last_analyzed from user_tables where table_name In ('EMP','DEPT');
execute DBMS_statS.GATHER_TABLE_STATS('SCOTT','EMP,NULL,20,FALSE','FOR ALL COLUMNS',4);
Execute DBMS_STATS.GATHER_TABLE_STATS('hr','EMP',NuLL,Null,False,'For ALL COLUMNS',4);
Execute DBMS_STATS.GATHER_SCHEMA_STATS('SCOTT');
execute DBMS_STATS.GATHER_DATAbase_stats;
execute dbms_stats.create_stat_table(USER, 'stat_tab', 'users');
