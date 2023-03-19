ALTER TABLE board
	DROP
		CONSTRAINT FK_regist_TO_board
		CASCADE;

ALTER TABLE data
	DROP
		CONSTRAINT FK_regist_TO_data
		CASCADE;

ALTER TABLE dataFile
	DROP
		CONSTRAINT FK_data_TO_dataFile
		CASCADE;

ALTER TABLE ReplyBoard
	DROP
		CONSTRAINT FK_board_TO_ReplyBoard
		CASCADE;

ALTER TABLE ReplyBoard
	DROP
		CONSTRAINT FK_regist_TO_ReplyBoard
		CASCADE;

ALTER TABLE regist
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE board
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE data
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE dataFile
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE ReplyBoard
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

/* 회원가입 */
DROP TABLE regist 
	CASCADE CONSTRAINTS;

/* 게시판 */
DROP TABLE board 
	CASCADE CONSTRAINTS;

/* 우편번호 */
DROP TABLE zipcode 
	CASCADE CONSTRAINTS;

/* 자료실 */
DROP TABLE data 
	CASCADE CONSTRAINTS;

/* 자료실파일 */
DROP TABLE dataFile 
	CASCADE CONSTRAINTS;

/* 댓글 */
DROP TABLE ReplyBoard 
	CASCADE CONSTRAINTS;

/* 회원가입 */
CREATE TABLE regist (
	id VARCHAR2(30) NOT NULL, /* 아이디 */
	pw VARCHAR2(30) NOT NULL, /* 비밀번호 */
	name VARCHAR2(50) NOT NULL, /* 이름 */
	tel VARCHAR2(15) NOT NULL, /* 연락처 */
	email VARCHAR2(100), /* 이메일 */
	zipcode VARCHAR2(5), /* 우편번호 */
	addr VARCHAR2(200), /* 주소 */
	address VARCHAR2(10), /* 상세주소 */
	hobby VARCHAR2(300), /* 취미 */
	usrdate DATE DEFAULT sysdate /* 등록일 */
);

ALTER TABLE regist
	ADD
		CONSTRAINT PK_regist
		PRIMARY KEY (
			id
		);

/* 게시판 */
CREATE TABLE board (
	no NUMBER(6) NOT NULL, /* 번호 */
	title VARCHAR2(300) NOT NULL, /* 제목 */
	content CLOB NOT NULL, /* 내용 */
	id VARCHAR2(30) NOT NULL, /* 작성자 */
	hit number(6) DEFAULT 0 NOT NULL, /* 조회수 */
	writedate DATE DEFAULT sysdate NOT NULL, /* 등록일 */
	ip VARCHAR2(15) NOT NULL /* 접속자ip */
);

ALTER TABLE board
	ADD
		CONSTRAINT PK_board
		PRIMARY KEY (
			no
		);

/* 우편번호 */
CREATE TABLE zipcode (
	post CHAR(5) NOT NULL, /* 우편번호 */
	sido VARCHAR2(25) NOT NULL, /* 시도 */
	doroname VARCHAR2(60) NOT NULL, /* 도로명 */
	Buildnum1 NUMBER, /* 건물번호본번 */
	Buildnum2 NUMBER, /* 건물번호부번 */
	buildname VARCHAR2(150), /* 시군구용건물명 */
	dong VARCHAR2(100), /* 법정동명 */
	bungi1 NUMBER, /* 지번본번 */
	illyen NUMBER, /* 읍면동일련번호 */
	bungi2 NUMBER /* 지번부번 */
);

/* 자료실 */
CREATE TABLE data (
	no number(6) NOT NULL, /* 번호 */
	id VARCHAR2(30) NOT NULL, /* 아이디 */
	title VARCHAR2(300) NOT NULL, /* 제목 */
	content CLOB NOT NULL, /* 글내용 */
	hit NUMBER(6), /* 조회수 */
	writedate DATE DEFAULT sysdate, /* 등록일 */
	ip VARCHAR2(15) NOT NULL /* ip */
);

ALTER TABLE data
	ADD
		CONSTRAINT PK_data
		PRIMARY KEY (
			no
		);

/* 자료실파일 */
CREATE TABLE dataFile (
	id VARCHAR2(30) NOT NULL, /* 아이디 */
	no number(6) NOT NULL, /* 번호 */
	fileName VARCHAR2(300) NOT NULL /* 파일명 */
);

/* 댓글 */
CREATE TABLE ReplyBoard (
	nono NUMBER(6) NOT NULL,
	replyNo NUMBER(6) NOT NULL,
	usrid VARCHAR2(30) NOT NULL,
	reply VARCHAR2(300) NOT NULL,
	writedate DATE DEFAULT sysdate NOT NULL,
	ip VARCHAR2(15) NOT NULL
);
desc replyboard;

ALTER TABLE ReplyBoard
	ADD
		CONSTRAINT PK_ReplyBoard
		PRIMARY KEY (
			replyNo
		);

ALTER TABLE board
	ADD
		CONSTRAINT FK_regist_TO_board
		FOREIGN KEY (
			id
		)
		REFERENCES regist (
			id
		)
		ON DELETE CASCADE;

ALTER TABLE data
	ADD
		CONSTRAINT FK_regist_TO_data
		FOREIGN KEY (
			id
		)
		REFERENCES regist (
			id
		)
		ON DELETE CASCADE;

ALTER TABLE dataFile
	ADD
		CONSTRAINT FK_data_TO_dataFile
		FOREIGN KEY (
			no
		)
		REFERENCES data (
			no
		)
		ON DELETE CASCADE;

ALTER TABLE ReplyBoard
	ADD
		CONSTRAINT FK_board_TO_ReplyBoard
		FOREIGN KEY (
			no
		)
		REFERENCES board (
			no
		)
		ON DELETE CASCADE;

ALTER TABLE ReplyBoard
	ADD
		CONSTRAINT FK_regist_TO_ReplyBoard
		FOREIGN KEY (
			id
		)
		REFERENCES regist (
			id
		)
		ON DELETE CASCADE;