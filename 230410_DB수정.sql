ALTER TABLE customInfo
	DROP
		CONSTRAINT FK_CampInfo_TO_customInfo
		CASCADE


DDL 구문이 수행되었습니다.


ALTER TABLE GoodInfo
	DROP
		CONSTRAINT FK_SellerInfo_TO_GoodInfo
		CASCADE


DDL 구문이 수행되었습니다.


ALTER TABLE campInven
	DROP
		CONSTRAINT FK_CampInfo_TO_campInven
		CASCADE


DDL 구문이 수행되었습니다.


ALTER TABLE sellInfo
	DROP
		CONSTRAINT FK_GoodInfo_TO_sellInfo
		CASCADE


DDL 구문이 수행되었습니다.


ALTER TABLE sellInfo
	DROP
		CONSTRAINT FK_CampInfo_TO_sellInfo
		CASCADE


DDL 구문이 수행되었습니다.


ALTER TABLE sellInfo
	DROP
		CONSTRAINT FK_customInfo_TO_sellInfo
		CASCADE


DDL 구문이 수행되었습니다.


ALTER TABLE empInfo
	DROP
		CONSTRAINT FK_CampInfo_TO_empInfo
		CASCADE


DDL 구문이 수행되었습니다.


ALTER TABLE customInfo
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX


DDL 구문이 수행되었습니다.


ALTER TABLE GoodInfo
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX


DDL 구문이 수행되었습니다.


ALTER TABLE campInven
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX


ORA-02441 Cannot drop nonexistent primary key

ALTER TABLE CampInfo
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX


DDL 구문이 수행되었습니다.


ALTER TABLE sellInfo
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX


ORA-02441 Cannot drop nonexistent primary key

ALTER TABLE empInfo
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX


DDL 구문이 수행되었습니다.


ALTER TABLE SellerInfo
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX


DDL 구문이 수행되었습니다.


DROP TABLE customInfo 
	CASCADE CONSTRAINTS


DDL 구문이 수행되었습니다.


DROP TABLE GoodInfo 
	CASCADE CONSTRAINTS


DDL 구문이 수행되었습니다.


DROP TABLE campInven 
	CASCADE CONSTRAINTS


DDL 구문이 수행되었습니다.


DROP TABLE CampInfo 
	CASCADE CONSTRAINTS


DDL 구문이 수행되었습니다.


DROP TABLE sellInfo 
	CASCADE CONSTRAINTS


DDL 구문이 수행되었습니다.


DROP TABLE empInfo 
	CASCADE CONSTRAINTS


DDL 구문이 수행되었습니다.


DROP TABLE SellerInfo 
	CASCADE CONSTRAINTS


DDL 구문이 수행되었습니다.


CREATE TABLE customInfo (
	customNo NUMBER(10) NOT NULL,
	name VARCHAR2(300) NOT NULL,
	birth DATE,
	email VARCHAR2(300),
	addr VARCHAR2(100),
	tel VARCHAR2(12) NOT NULL,
	gender VARCHAR2(1),
	memo VARCHAR2(2000),
	registDate DATE,
	code VARCHAR2(10)
)


DDL 구문이 수행되었습니다.


ALTER TABLE customInfo
	ADD
		CONSTRAINT PK_customInfo
		PRIMARY KEY (
			customNo
		)


DDL 구문이 수행되었습니다.


CREATE TABLE GoodInfo (
	goodno VARCHAR2(7) NOT NULL,
	sellercode varchar2(10) NOT NULL,
	classifyNo VARCHAR2(1) NOT NULL,
	model varchar(500)
)


DDL 구문이 수행되었습니다.


ALTER TABLE GoodInfo
	ADD
		CONSTRAINT PK_GoodInfo
		PRIMARY KEY (
			goodno
		)


DDL 구문이 수행되었습니다.


CREATE TABLE campInven (
	code VARCHAR2(10) NOT NULL,
	goodNo VARCHAR2(7) NOT NULL,
	idle NUMBER(6) NOT NULL,
	now NUMBER(6) NOT NULL
)


DDL 구문이 수행되었습니다.


CREATE TABLE CampInfo (
	code VARCHAR2(10) NOT NULL,
	campName VARCHAR2(50) NOT NULL,
	empno NUMBER(10),
	bussinessNo varchar2(12) NOT NULL,
	tel varchar2(15) NOT NULL,
	fax VARCHAR2(15)
)


DDL 구문이 수행되었습니다.


ALTER TABLE CampInfo
	ADD
		CONSTRAINT PK_CampInfo
		PRIMARY KEY (
			code
		)


DDL 구문이 수행되었습니다.


CREATE TABLE sellInfo (
	customNo NUMBER(10) NOT NULL,
	sellDate DATE DEFAULT Sysdate,
	promiceDate DATE,
	qtt NUMBER(4) NOT NULL,
	empno NUMBER(10) NOT NULL,
	sellstatus char(1) DEFAULT 0 NOT NULL,
	goodno VARCHAR2(7) NOT NULL,
	code VARCHAR2(10) NOT NULL
)


DDL 구문이 수행되었습니다.


CREATE TABLE empInfo (
	empno NUMBER(10) NOT NULL,
	code VARCHAR2(10) NOT NULL,
	ename VARCHAR2(300) NOT NULL,
	auth number(1) NOT NULL,
	empDate DATE DEFAULT  Sysdate,
	pwd VARCHAR2(200) NOT NULL
)



DDL 구문이 수행되었습니다.


ALTER TABLE empInfo
	ADD
		CONSTRAINT PK_empInfo
		PRIMARY KEY (
			empno
		)


DDL 구문이 수행되었습니다.


CREATE TABLE SellerInfo (
	sellercode varchar2(10) NOT NULL,
	SellerCeo VARCHAR2(300),
	SellerName VARCHAR2(100) NOT NULL,
	SellerNo VARCHAR2(12) NOT NULL,
	SellerTel VARCHAR2(15) NOT NULL,
	SellerFax VARCHAR2(15)
)


DDL 구문이 수행되었습니다.


ALTER TABLE SellerInfo
	ADD
		CONSTRAINT PK_SellerInfo
		PRIMARY KEY (
			sellercode
		)


DDL 구문이 수행되었습니다.


ALTER TABLE customInfo
	ADD
		CONSTRAINT FK_CampInfo_TO_customInfo
		FOREIGN KEY (
			code
		)
		REFERENCES CampInfo (
			code
		)


DDL 구문이 수행되었습니다.


ALTER TABLE GoodInfo
	ADD
		CONSTRAINT FK_SellerInfo_TO_GoodInfo
		FOREIGN KEY (
			sellercode
		)
		REFERENCES SellerInfo (
			sellercode
		)


DDL 구문이 수행되었습니다.


ALTER TABLE campInven
	ADD
		CONSTRAINT FK_CampInfo_TO_campInven
		FOREIGN KEY (
			code
		)
		REFERENCES CampInfo (
			code
		)


DDL 구문이 수행되었습니다.


ALTER TABLE sellInfo
	ADD
		CONSTRAINT FK_GoodInfo_TO_sellInfo
		FOREIGN KEY (
			goodno
		)
		REFERENCES GoodInfo (
			goodno
		)


DDL 구문이 수행되었습니다.


ALTER TABLE sellInfo
	ADD
		CONSTRAINT FK_CampInfo_TO_sellInfo
		FOREIGN KEY (
			code
		)
		REFERENCES CampInfo (
			code
		)


DDL 구문이 수행되었습니다.


ALTER TABLE sellInfo
	ADD
		CONSTRAINT FK_customInfo_TO_sellInfo
		FOREIGN KEY (
			customNo
		)
		REFERENCES customInfo (
			customNo
		)


DDL 구문이 수행되었습니다.


ALTER TABLE empInfo
	ADD
		CONSTRAINT FK_CampInfo_TO_empInfo
		FOREIGN KEY (
			code
		)
		REFERENCES CampInfo (
			code
		)


DDL 구문이 수행되었습니다.


ALTER TABLE customInfo
	DROP
		CONSTRAINT FK_CampInfo_TO_customInfo
		CASCADE


DDL 구문이 수행되었습니다.


ALTER TABLE GoodInfo
	DROP
		CONSTRAINT FK_SellerInfo_TO_GoodInfo
		CASCADE


DDL 구문이 수행되었습니다.


ALTER TABLE campInven
	DROP
		CONSTRAINT FK_CampInfo_TO_campInven
		CASCADE


DDL 구문이 수행되었습니다.


ALTER TABLE sellInfo
	DROP
		CONSTRAINT FK_GoodInfo_TO_sellInfo
		CASCADE


DDL 구문이 수행되었습니다.


ALTER TABLE sellInfo
	DROP
		CONSTRAINT FK_CampInfo_TO_sellInfo
		CASCADE


DDL 구문이 수행되었습니다.


ALTER TABLE sellInfo
	DROP
		CONSTRAINT FK_customInfo_TO_sellInfo
		CASCADE


DDL 구문이 수행되었습니다.


ALTER TABLE sellInfo
	DROP
		CONSTRAINT FK_Usecoupon_TO_sellInfo
		CASCADE


ORA-02443 Cannot drop constraint  - nonexistent constraint

ALTER TABLE empInfo
	DROP
		CONSTRAINT FK_CampInfo_TO_empInfo
		CASCADE


DDL 구문이 수행되었습니다.


ALTER TABLE Usecoupon
	DROP
		CONSTRAINT FK_CouponInfo_TO_Usecoupon
		CASCADE


ORA-00942 table or view does not exist

ALTER TABLE Usecoupon
	DROP
		CONSTRAINT FK_empInfo_TO_Usecoupon
		CASCADE


ORA-00942 table or view does not exist

ALTER TABLE customInfo
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX


DDL 구문이 수행되었습니다.


ALTER TABLE GoodInfo
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX


DDL 구문이 수행되었습니다.


ALTER TABLE campInven
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX


ORA-02441 Cannot drop nonexistent primary key

ALTER TABLE CampInfo
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX


DDL 구문이 수행되었습니다.


ALTER TABLE sellInfo
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX


ORA-02441 Cannot drop nonexistent primary key

ALTER TABLE empInfo
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX


DDL 구문이 수행되었습니다.


ALTER TABLE SellerInfo
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX


DDL 구문이 수행되었습니다.


ALTER TABLE CouponInfo
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX


ORA-00942 table or view does not exist

ALTER TABLE Usecoupon
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX


ORA-00942 table or view does not exist

DROP TABLE customInfo 
	CASCADE CONSTRAINTS


DDL 구문이 수행되었습니다.


DROP TABLE GoodInfo 
	CASCADE CONSTRAINTS


DDL 구문이 수행되었습니다.


DROP TABLE campInven 
	CASCADE CONSTRAINTS


DDL 구문이 수행되었습니다.


DROP TABLE CampInfo 
	CASCADE CONSTRAINTS


DDL 구문이 수행되었습니다.


DROP TABLE sellInfo 
	CASCADE CONSTRAINTS


DDL 구문이 수행되었습니다.


DROP TABLE empInfo 
	CASCADE CONSTRAINTS


DDL 구문이 수행되었습니다.


DROP TABLE SellerInfo 
	CASCADE CONSTRAINTS


DDL 구문이 수행되었습니다.


DROP TABLE CouponInfo 
	CASCADE CONSTRAINTS


ORA-00942 table or view does not exist

DROP TABLE Usecoupon 
	CASCADE CONSTRAINTS


ORA-00942 table or view does not exist

CREATE TABLE customInfo (
	customNo NUMBER(10) NOT NULL,
	name VARCHAR2(300) NOT NULL,
	birth DATE,
	email VARCHAR2(300),
	addr VARCHAR2(100),
	tel VARCHAR2(12) NOT NULL,
	gender VARCHAR2(1),
	memo VARCHAR2(2000),
	registDate DATE,
	code VARCHAR2(10)
)


DDL 구문이 수행되었습니다.


ALTER TABLE customInfo
	ADD
		CONSTRAINT PK_customInfo
		PRIMARY KEY (
			customNo
		)


DDL 구문이 수행되었습니다.


CREATE TABLE GoodInfo (
	goodno VARCHAR2(7) NOT NULL,
	sellercode varchar2(10) NOT NULL,
	classifyNo VARCHAR2(1) NOT NULL,
	model varchar(500),
	BuyPrice NUMBER(7),
	SellPrice NUMBER(7)
)


DDL 구문이 수행되었습니다.


ALTER TABLE GoodInfo
	ADD
		CONSTRAINT PK_GoodInfo
		PRIMARY KEY (
			goodno
		)


DDL 구문이 수행되었습니다.


CREATE TABLE campInven (
	code VARCHAR2(10) NOT NULL,
	goodNo VARCHAR2(7) NOT NULL,
	idle NUMBER(6) NOT NULL,
	now NUMBER(6) NOT NULL
)


DDL 구문이 수행되었습니다.


CREATE TABLE CampInfo (
	code VARCHAR2(10) NOT NULL,
	campName VARCHAR2(50) NOT NULL,
	empno NUMBER(10),
	bussinessNo varchar2(12) NOT NULL,
	tel varchar2(15) NOT NULL,
	fax VARCHAR2(15)
)


DDL 구문이 수행되었습니다.


ALTER TABLE CampInfo
	ADD
		CONSTRAINT PK_CampInfo
		PRIMARY KEY (
			code
		)


DDL 구문이 수행되었습니다.


CREATE TABLE sellInfo (
	id <지정 되지 않음> NOT NULL,
	customNo NUMBER(10) NOT NULL,
	SellNo NUMBER(10),
	sellDate DATE DEFAULT Sysdate,
	promiceDate DATE,
	qtt NUMBER(4) NOT NULL,
	empno NUMBER(10) NOT NULL,
	sellstatus char(1) DEFAULT 0 NOT NULL,
	goodno VARCHAR2(7) NOT NULL,
	code VARCHAR2(10) NOT NULL,
	realPrice number(7) NOT NULL,
	couponCode VARCHAR2(10)
)


ORA-00902 invalid datatype

ALTER TABLE customInfo
	DROP
		CONSTRAINT FK_CampInfo_TO_customInfo
		CASCADE


ORA-02443 Cannot drop constraint  - nonexistent constraint

ALTER TABLE GoodInfo
	DROP
		CONSTRAINT FK_SellerInfo_TO_GoodInfo
		CASCADE


ORA-02443 Cannot drop constraint  - nonexistent constraint

ALTER TABLE campInven
	DROP
		CONSTRAINT FK_CampInfo_TO_campInven
		CASCADE


ORA-02443 Cannot drop constraint  - nonexistent constraint

ALTER TABLE sellInfo
	DROP
		CONSTRAINT FK_GoodInfo_TO_sellInfo
		CASCADE


ORA-00942 table or view does not exist

ALTER TABLE sellInfo
	DROP
		CONSTRAINT FK_CampInfo_TO_sellInfo
		CASCADE


ORA-00942 table or view does not exist

ALTER TABLE sellInfo
	DROP
		CONSTRAINT FK_customInfo_TO_sellInfo
		CASCADE


ORA-00942 table or view does not exist

ALTER TABLE sellInfo
	DROP
		CONSTRAINT FK_Usecoupon_TO_sellInfo
		CASCADE


ORA-00942 table or view does not exist

ALTER TABLE empInfo
	DROP
		CONSTRAINT FK_CampInfo_TO_empInfo
		CASCADE


ORA-00942 table or view does not exist

ALTER TABLE Usecoupon
	DROP
		CONSTRAINT FK_CouponInfo_TO_Usecoupon
		CASCADE


ORA-00942 table or view does not exist

ALTER TABLE Usecoupon
	DROP
		CONSTRAINT FK_empInfo_TO_Usecoupon
		CASCADE


ORA-00942 table or view does not exist

ALTER TABLE customInfo
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX


DDL 구문이 수행되었습니다.


ALTER TABLE GoodInfo
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX


DDL 구문이 수행되었습니다.


ALTER TABLE campInven
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX


ORA-02441 Cannot drop nonexistent primary key

ALTER TABLE CampInfo
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX


DDL 구문이 수행되었습니다.


ALTER TABLE sellInfo
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX


ORA-00942 table or view does not exist

ALTER TABLE empInfo
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX


ORA-00942 table or view does not exist

ALTER TABLE SellerInfo
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX


ORA-00942 table or view does not exist

ALTER TABLE CouponInfo
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX


ORA-00942 table or view does not exist

ALTER TABLE Usecoupon
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX


ORA-00942 table or view does not exist

DROP TABLE customInfo 
	CASCADE CONSTRAINTS


DDL 구문이 수행되었습니다.


DROP TABLE GoodInfo 
	CASCADE CONSTRAINTS


DDL 구문이 수행되었습니다.


DROP TABLE campInven 
	CASCADE CONSTRAINTS


DDL 구문이 수행되었습니다.


DROP TABLE CampInfo 
	CASCADE CONSTRAINTS


DDL 구문이 수행되었습니다.


DROP TABLE sellInfo 
	CASCADE CONSTRAINTS


ORA-00942 table or view does not exist

DROP TABLE empInfo 
	CASCADE CONSTRAINTS


ORA-00942 table or view does not exist

DROP TABLE SellerInfo 
	CASCADE CONSTRAINTS


ORA-00942 table or view does not exist

DROP TABLE CouponInfo 
	CASCADE CONSTRAINTS


ORA-00942 table or view does not exist

DROP TABLE Usecoupon 
	CASCADE CONSTRAINTS


ORA-00942 table or view does not exist

CREATE TABLE customInfo (
	customNo NUMBER(10) NOT NULL,
	name VARCHAR2(300) NOT NULL,
	birth DATE,
	email VARCHAR2(300),
	addr VARCHAR2(100),
	tel VARCHAR2(12) NOT NULL,
	gender VARCHAR2(1),
	memo VARCHAR2(2000),
	registDate DATE,
	code VARCHAR2(10)
)


DDL 구문이 수행되었습니다.


ALTER TABLE customInfo
	ADD
		CONSTRAINT PK_customInfo
		PRIMARY KEY (
			customNo
		)


DDL 구문이 수행되었습니다.


CREATE TABLE GoodInfo (
	goodno VARCHAR2(7) NOT NULL,
	sellercode varchar2(10) NOT NULL,
	classifyNo VARCHAR2(1) NOT NULL,
	model varchar(500),
	BuyPrice NUMBER(7),
	SellPrice NUMBER(7)
)


DDL 구문이 수행되었습니다.


ALTER TABLE GoodInfo
	ADD
		CONSTRAINT PK_GoodInfo
		PRIMARY KEY (
			goodno
		)


DDL 구문이 수행되었습니다.


CREATE TABLE campInven (
	code VARCHAR2(10) NOT NULL,
	goodNo VARCHAR2(7) NOT NULL,
	idle NUMBER(6) NOT NULL,
	now NUMBER(6) NOT NULL
)


DDL 구문이 수행되었습니다.


CREATE TABLE CampInfo (
	code VARCHAR2(10) NOT NULL,
	campName VARCHAR2(50) NOT NULL,
	empno NUMBER(10),
	bussinessNo varchar2(12) NOT NULL,
	tel varchar2(15) NOT NULL,
	fax VARCHAR2(15)
)


DDL 구문이 수행되었습니다.


ALTER TABLE CampInfo
	ADD
		CONSTRAINT PK_CampInfo
		PRIMARY KEY (
			code
		)


DDL 구문이 수행되었습니다.


CREATE TABLE sellInfo (
	customNo NUMBER(10) NOT NULL,
	SellNo NUMBER(10),
	sellDate DATE DEFAULT Sysdate,
	promiceDate DATE,
	qtt NUMBER(4) NOT NULL,
	empno NUMBER(10) NOT NULL,
	sellstatus char(1) DEFAULT 0 NOT NULL,
	goodno VARCHAR2(7) NOT NULL,
	code VARCHAR2(10) NOT NULL,
	realPrice number(7) NOT NULL,
	couponCode VARCHAR2(10)
)


DDL 구문이 수행되었습니다.


CREATE TABLE empInfo (
	empno NUMBER(10) NOT NULL,
	code VARCHAR2(10) NOT NULL,
	ename VARCHAR2(300) NOT NULL,
	auth number(1) NOT NULL,
	empDate DATE DEFAULT  Sysdate,
	pwd VARCHAR2(200) NOT NULL
)


DDL 구문이 수행되었습니다.


ALTER TABLE empInfo
	ADD
		CONSTRAINT PK_empInfo
		PRIMARY KEY (
			empno
		)


DDL 구문이 수행되었습니다.


CREATE TABLE SellerInfo (
	sellercode varchar2(10) NOT NULL,
	SellerCeo VARCHAR2(300),
	SellerName VARCHAR2(100) NOT NULL,
	SellerNo VARCHAR2(12) NOT NULL,
	SellerTel VARCHAR2(15) NOT NULL,
	SellerFax VARCHAR2(15)
)


DDL 구문이 수행되었습니다.


ALTER TABLE SellerInfo
	ADD
		CONSTRAINT PK_SellerInfo
		PRIMARY KEY (
			sellercode
		)


DDL 구문이 수행되었습니다.


CREATE TABLE CouponInfo (
	couponCode VARCHAR2(10) NOT NULL,
	usableNum NUMBER(3) NOT NULL,
	auth number(1),
	discount number(3) NOT NULL,
	deadLine DATE
)


DDL 구문이 수행되었습니다.


ALTER TABLE CouponInfo
	ADD
		CONSTRAINT PK_CouponInfo
		PRIMARY KEY (
			couponCode
		)


DDL 구문이 수행되었습니다.


CREATE TABLE Usecoupon (
	couponCode VARCHAR2(10) NOT NULL,
	empno NUMBER(10) NOT NULL,
	usedNum NUMBER(3) NOT NULL
)


DDL 구문이 수행되었습니다.


ALTER TABLE Usecoupon
	ADD
		CONSTRAINT PK_Usecoupon
		PRIMARY KEY (
			couponCode,
			empno
		)


DDL 구문이 수행되었습니다.


ALTER TABLE customInfo
	ADD
		CONSTRAINT FK_CampInfo_TO_customInfo
		FOREIGN KEY (
			code
		)
		REFERENCES CampInfo (
			code
		)


DDL 구문이 수행되었습니다.


ALTER TABLE GoodInfo
	ADD
		CONSTRAINT FK_SellerInfo_TO_GoodInfo
		FOREIGN KEY (
			sellercode
		)
		REFERENCES SellerInfo (
			sellercode
		)


DDL 구문이 수행되었습니다.


ALTER TABLE campInven
	ADD
		CONSTRAINT FK_CampInfo_TO_campInven
		FOREIGN KEY (
			code
		)
		REFERENCES CampInfo (
			code
		)


DDL 구문이 수행되었습니다.


ALTER TABLE sellInfo
	ADD
		CONSTRAINT FK_GoodInfo_TO_sellInfo
		FOREIGN KEY (
			goodno
		)
		REFERENCES GoodInfo (
			goodno
		)


DDL 구문이 수행되었습니다.


ALTER TABLE sellInfo
	ADD
		CONSTRAINT FK_CampInfo_TO_sellInfo
		FOREIGN KEY (
			code
		)
		REFERENCES CampInfo (
			code
		)


DDL 구문이 수행되었습니다.


ALTER TABLE sellInfo
	ADD
		CONSTRAINT FK_customInfo_TO_sellInfo
		FOREIGN KEY (
			customNo
		)
		REFERENCES customInfo (
			customNo
		)


DDL 구문이 수행되었습니다.


ALTER TABLE sellInfo
	ADD
		CONSTRAINT FK_Usecoupon_TO_sellInfo
		FOREIGN KEY (
			couponCode,
			empno
		)
		REFERENCES Usecoupon (
			couponCode,
			empno
		)


DDL 구문이 수행되었습니다.


ALTER TABLE empInfo
	ADD
		CONSTRAINT FK_CampInfo_TO_empInfo
		FOREIGN KEY (
			code
		)
		REFERENCES CampInfo (
			code
		)


DDL 구문이 수행되었습니다.


ALTER TABLE Usecoupon
	ADD
		CONSTRAINT FK_CouponInfo_TO_Usecoupon
		FOREIGN KEY (
			couponCode
		)
		REFERENCES CouponInfo (
			couponCode
		)


DDL 구문이 수행되었습니다.


ALTER TABLE Usecoupon
	ADD
		CONSTRAINT FK_empInfo_TO_Usecoupon
		FOREIGN KEY (
			empno
		)
		REFERENCES empInfo (
			empno
		)


DDL 구문이 수행되었습니다.


