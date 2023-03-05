select * from regist;
select * from board;
select usrname,usrid from regist where usrid = 'test' and usrpw = '12345';
select * from tab;
desc board;
select * from board;
insert into board(no) values (board_sq);
select * from user_sequences;
purge RECYCLEBIN;
select * from regist;
select * from board;
alter table board rename column bbsno to no;
insert into board(title) values('1');
insert into board(no) values(sq.nextval);
desc board;
select * from board;
delete from board ;
create sequence sq
start with 1
increment by 1
;
select * from user_constraints;
select * from user_constraints;
alter table board drop constraint PK_board;
select * from 
ALTER TABLE board
	drop
		CONSTRAINT FK_regist_TO_board;
drop table register;
select * from board;