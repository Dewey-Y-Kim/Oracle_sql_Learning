CREATE TABLE ansBoard (
	no NUMBER(5) NOT NULL,
	title VARCHAR2(300) NOT NULL,
	content CLOB NOT NULL,
	id VARCHAR2(30) NOT NULL,
	hit NUMBER(6) DEFAULT 0,
	writedate DATE DEFAULT sysdate,
	ip VARCHAR2(15) NOT NULL,
	refno NUMBER(6) DEFAULT 0,
	lv NUMBER DEFAULT 0,
	step NUMBER DEFAULT 0
)

ALTER TABLE ansBoard
	ADD
		CONSTRAINT PK_ansBoard
		PRIMARY KEY (
			no
		)


ORA-00942 table or view does not exist

ALTER TABLE ansBoard
	ADD
		CONSTRAINT FK_regist_TO_ansBoard
		FOREIGN KEY (
			id
		)
		REFERENCES regist (
			id
		)

alter table ansboard rename column writedate to date;
select * from tab;
desc ansboard;
select * from user_constraints where table_name=upper('ansboard');
create sequence answer_sq;
select * from user_sequences;

select * from tab;
select * from data;
alter table data modify no Number default data_sq.nextval;
ALTER TABLE 테이블명 MODIFY 컬럼명 컬럼명의_데이터타입 DEFAULT SYSDATE;
select * from ansboard;
update ansboard set ;// dao 완성전 입력한 내용 추가
desc ansboard;
data_sq.currval
