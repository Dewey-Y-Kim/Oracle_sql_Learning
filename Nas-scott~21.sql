CREATE TABLE board (
	no NUMBER(6) NOT NULL, /* 번호 */
	title VARCHAR2(300) NOT NULL, /* 제목 */
	content CLOB NOT NULL, /* 내용 */
	usrid VARCHAR2(30) NOT NULL, /* 작성자 */
	hit number(6) DEFAULT 0 NOT NULL, /* 조회수 */
	writedate DATE DEFAULT sysdate NOT NULL, /* 등록일 */
	ip VARCHAR2(15) NOT NULL /* 접속자ip */
);
select * from restraints;
alter table regist rename column usrhobby to hobby;
alter table regist add constraint pk_regist primary key (id);
ALTER TABLE board
	ADD
		CONSTRAINT PK_board
		PRIMARY KEY (
			no
		);
select * from board;
alter table board rename column usrid to id;
ALTER TABLE board
	ADD
		CONSTRAINT FK_regist_TO_board
		FOREIGN KEY (
			id
		)
		REFERENCES regist (
			usrid
		);
        
select * from board;
desc board;
select * from tab;
purge recyclebin;
select * from regist;
desc register;
insert into regist(usrid, usrpw, usrname,usrtel,usremail,usrpost,usraddr,usraddress,usrhobby,usrdate)
values('tester','12345','kim','010-1234-1234','abc@gmail.com','12345','강동구','잠실', '검도/축구',sysdate);
commit;
