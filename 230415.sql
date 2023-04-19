select * from tab;
select * from noticeBBS;
desc noticebbs;
select * from noticeBBS;
select * from user_sequences;
select NOTICE_SQ.nextval from dual;
select * from empinfo;
insert into noticebbs(no, empno, title, content) values(NOTICE_SQ.nextval, 24, 'test', Rawtohex('test2'));
select * from noticebbs;

delete from noticebbs where no=6;
alter Table noticebbs modify (content  VARCHAR2(500));
alter table noticebbs add(content varchar2(500));
ALTER TABLE noticebbs ADD(hit Number(4)); 

insert into noticebbs(no, empno, title,content) values(1,24, 'test', 'test1');
select no, title, e.ename writer, writeDate from noticeBBS n join empInfo e on n.empno = e.empno;
select no, title, e.ename writer, writeDate from noticeBBS n join empInfo e on n.empno = e.empno

select count(no) totalLine from noticeBBS;
select count(no) totalLine from noticeBBS;
select * from noticeBBS;
