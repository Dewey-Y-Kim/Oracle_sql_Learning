select * from sellInfo where to_char(sellDate,'yyyy-mm-dd')= '2023-05-08';
select * from sellInfo order by selldate desc;
delete sellInfo where to_char(selldate,'yyyy-mm-dd')= '2023-05-08';
commit;
select to_date('2023-05-08T09:24:45','YYYY-MM-DD HH24:MI:SS') from dual;
exit;