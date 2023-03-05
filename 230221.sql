select * from user_constraints;
 no NOT NULL;

alter TABLE board modify
(
	title NOT NULL,
	content NOT NULL,
	id NOT NULL,
	hit DEFAULT 0 NOT NULL,
	writedate default sysdate NOT NULL,
	ip NOT NULL
);
rollback;
select * from regist;
select * from board;
insert into board(no, title,content,id,ip) values (board_sq.nextval,'title','content','id','ip');
2023-02-21 12:00:14
select no, r.name, hit, To_char(writedate,'YYYY-MM-DD HH:mi:ss') writedate, title, content from board b join regist r on b.id=r.id and no=4;
select * from regist;
insert into regist(id,pw,name,tel,email,post,addr,address,hobby)
values ('test2','12345','lee','010-123-1234','cba@gmail.com',12345,'강남구','청담동','잠');
commit;
select no, title, content from Board where no=?;
select no, title, content from Board where no=2;
select * from board;