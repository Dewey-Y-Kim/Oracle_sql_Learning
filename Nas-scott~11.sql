CREATE TABLE board (
	no NUMBER(6) NOT NULL, /* 번호 */
	title VARCHAR2(300) NOT NULL, /* 제목 */
	content CLOB NOT NULL, /* 내용 */
	usrid VARCHAR2(30) NOT NULL, /* 작성자 */
	hit NUMBER(6) DEFAULT 0 NOT NULL, /* 조회수 */
	writedate DATE DEFAULT sysdate NOT NULL, /* 등록일 */
	ip VARCHAR2(15) NOT NULL /* 접속자ip */
);

ALTER TABLE board
	ADD
		CONSTRAINT PK_board
		PRIMARY KEY (
			no
		);
select * from user_constraints;    

select * from user_constraints where table_name='REGIST';
select * from tab;
DROP TABLE from user_constraints WHERE constraint_type='p' AND table_name='REGIST';
alter table regist drop constraint PK_REGIST;
desc regist;
select * from user_tab_columns where Table_name='REGIST';
select * from user_cons_columns where table_name='BOARD';
ALTER TABLE regist ADD CONSTRAINT 'PK_regist' PRIMARY KEY (userid);
alter table regist add constraint PK PRIMARY key(usrid);
ALTER TABLE board ADD  CONSTRAINT FK_regist_TO_board
		FOREIGN KEY (
			usrid
		)
		REFERENCES register (
			usrid
		);
        
select * from tab;
create sequence board_sq
start with 1
increment by 1;
select * from user_sequences;
purge recyclebin;
ALTER TABLE '테이블명' ADD CONSTRAINT '제약조건명' PRIMARY KEY ('칼럼명1, 칼럼명2...');