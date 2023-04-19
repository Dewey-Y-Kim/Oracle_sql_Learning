CREATE TABLE noticeBBS (
	no number(7) not null,
    empno NUMBER(10) NOT NULL,
	title VARCHAR2(300) NOT NULL,
	content BLOB NOT NULL,
	writeDate DATE DEFAULT Sysdate
);

create sequence notice_sq;
ALTER TABLE noticeBBS
	ADD
		CONSTRAINT PK_NoticeBBS
		PRIMARY KEY (
			no
		)

ALTER TABLE noticeBBS
	ADD
		CONSTRAINT FK_EmpInfo_TO_NoticeBBS
		FOREIGN KEY (
			empno
		)
		REFERENCES EmpInfo (
			empno
		)
