select * from sellInfo where to_char(promisedate,'yyyy-mm-dd') = '2023-05-09';
select  * from sellInfo;

update sellInfo set promiseDate='' where to_char(promisedate,'yyyy-mm-dd') = '2023-05-09';
select * from sellInfo;
commit;