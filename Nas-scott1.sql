sequence

select * from member;
desc member;
create sequence mem_sq
Start with 1
increment by 1;
select * from member;
desc member;
Select no, username, tel, email, addr, to_char(WRITEDAY, 'YYYY-MM-DD') writedate from member order by no;
alter table member rename column writeday to writedate;
Select no, username, tel, email, addr, writedate from member 
where username like '%123%' or tel like '%123%';
show user;
update member set tel = ''