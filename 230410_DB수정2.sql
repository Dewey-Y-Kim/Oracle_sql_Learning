ALTER TABLE customInfo
	DROP
		CONSTRAINT FK_CampInfo_TO_customInfo
		CASCADE
;

ALTER TABLE GoodInfo
	DROP
		CONSTRAINT FK_SellerInfo_TO_GoodInfo
		CASCADE
;




ALTER TABLE campInven
	DROP
		CONSTRAINT FK_CampInfo_TO_campInven
		CASCADE
;




ALTER TABLE sellInfo
	DROP
		CONSTRAINT FK_GoodInfo_TO_sellInfo
		CASCADE

;



ALTER TABLE sellInfo
	DROP
		CONSTRAINT FK_CampInfo_TO_sellInfo
		CASCADE

;



ALTER TABLE sellInfo
	DROP
		CONSTRAINT FK_customInfo_TO_sellInfo
		CASCADE
;




ALTER TABLE empInfo
	DROP
		CONSTRAINT FK_CampInfo_TO_empInfo
		CASCADE

;



ALTER TABLE customInfo
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX

;



ALTER TABLE GoodInfo
	DROP
		PRIMARY KEY
		CASCADE


;



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





ALTER TABLE SellerInfo
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX





DROP TABLE customInfo 
	CASCADE CONSTRAINTS





DROP TABLE GoodInfo 
	CASCADE CONSTRAINTS





DROP TABLE campInven 
	CASCADE CONSTRAINTS





DROP TABLE CampInfo 
	CASCADE CONSTRAINTS





DROP TABLE sellInfo 
	CASCADE CONSTRAINTS





DROP TABLE empInfo 
	CASCADE CONSTRAINTS





DROP TABLE SellerInfo 
	CASCADE CONSTRAINTS





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





ALTER TABLE customInfo
	ADD
		CONSTRAINT PK_customInfo
		PRIMARY KEY (
			customNo
		)





CREATE TABLE GoodInfo (
	goodno VARCHAR2(7) NOT NULL,
	sellercode varchar2(10) NOT NULL,
	classifyNo VARCHAR2(1) NOT NULL,
	model varchar(500)
)





ALTER TABLE GoodInfo
	ADD
		CONSTRAINT PK_GoodInfo
		PRIMARY KEY (
			goodno
		)





CREATE TABLE campInven (
	code VARCHAR2(10) NOT NULL,
	goodNo VARCHAR2(7) NOT NULL,
	idle NUMBER(6) NOT NULL,
	now NUMBER(6) NOT NULL
)





CREATE TABLE CampInfo (
	code VARCHAR2(10) NOT NULL,
	campName VARCHAR2(50) NOT NULL,
	empno NUMBER(10),
	bussinessNo varchar2(12) NOT NULL,
	tel varchar2(15) NOT NULL,
	fax VARCHAR2(15)
)





ALTER TABLE CampInfo
	ADD
		CONSTRAINT PK_CampInfo
		PRIMARY KEY (
			code
		)





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





CREATE TABLE empInfo (
	empno NUMBER(10) NOT NULL,
	code VARCHAR2(10) NOT NULL,
	ename VARCHAR2(300) NOT NULL,
	auth number(1) NOT NULL,
	empDate DATE DEFAULT  Sysdate,
	pwd VARCHAR2(200) NOT NULL
)





ALTER TABLE empInfo
	ADD
		CONSTRAINT PK_empInfo
		PRIMARY KEY (
			empno
		)





CREATE TABLE SellerInfo (
	sellercode varchar2(10) NOT NULL,
	SellerCeo VARCHAR2(300),
	SellerName VARCHAR2(100) NOT NULL,
	SellerNo VARCHAR2(12) NOT NULL,
	SellerTel VARCHAR2(15) NOT NULL,
	SellerFax VARCHAR2(15)
)





ALTER TABLE SellerInfo
	ADD
		CONSTRAINT PK_SellerInfo
		PRIMARY KEY (
			sellercode
		)





ALTER TABLE customInfo
	ADD
		CONSTRAINT FK_CampInfo_TO_customInfo
		FOREIGN KEY (
			code
		)
		REFERENCES CampInfo (
			code
		)





ALTER TABLE GoodInfo
	ADD
		CONSTRAINT FK_SellerInfo_TO_GoodInfo
		FOREIGN KEY (
			sellercode
		)
		REFERENCES SellerInfo (
			sellercode
		)





ALTER TABLE campInven
	ADD
		CONSTRAINT FK_CampInfo_TO_campInven
		FOREIGN KEY (
			code
		)
		REFERENCES CampInfo (
			code
		)





ALTER TABLE sellInfo
	ADD
		CONSTRAINT FK_GoodInfo_TO_sellInfo
		FOREIGN KEY (
			goodno
		)
		REFERENCES GoodInfo (
			goodno
		)





ALTER TABLE sellInfo
	ADD
		CONSTRAINT FK_CampInfo_TO_sellInfo
		FOREIGN KEY (
			code
		)
		REFERENCES CampInfo (
			code
		)





ALTER TABLE sellInfo
	ADD
		CONSTRAINT FK_customInfo_TO_sellInfo
		FOREIGN KEY (
			customNo
		)
		REFERENCES customInfo (
			customNo
		)





ALTER TABLE empInfo
	ADD
		CONSTRAINT FK_CampInfo_TO_empInfo
		FOREIGN KEY (
			code
		)
		REFERENCES CampInfo (
			code
		)





ALTER TABLE customInfo
	DROP
		CONSTRAINT FK_CampInfo_TO_customInfo
		CASCADE





ALTER TABLE GoodInfo
	DROP
		CONSTRAINT FK_SellerInfo_TO_GoodInfo
		CASCADE





ALTER TABLE campInven
	DROP
		CONSTRAINT FK_CampInfo_TO_campInven
		CASCADE





ALTER TABLE sellInfo
	DROP
		CONSTRAINT FK_GoodInfo_TO_sellInfo
		CASCADE





ALTER TABLE sellInfo
	DROP
		CONSTRAINT FK_CampInfo_TO_sellInfo
		CASCADE





ALTER TABLE sellInfo
	DROP
		CONSTRAINT FK_customInfo_TO_sellInfo
		CASCADE





ALTER TABLE sellInfo
	DROP
		CONSTRAINT FK_Usecoupon_TO_sellInfo
		CASCADE


ORA-02443 Cannot drop constraint  - nonexistent constraint

ALTER TABLE empInfo
	DROP
		CONSTRAINT FK_CampInfo_TO_empInfo
		CASCADE





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





ALTER TABLE GoodInfo
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX





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





ALTER TABLE SellerInfo
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX





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





DROP TABLE GoodInfo 
	CASCADE CONSTRAINTS





DROP TABLE campInven 
	CASCADE CONSTRAINTS





DROP TABLE CampInfo 
	CASCADE CONSTRAINTS





DROP TABLE sellInfo 
	CASCADE CONSTRAINTS





DROP TABLE empInfo 
	CASCADE CONSTRAINTS





DROP TABLE SellerInfo 
	CASCADE CONSTRAINTS





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





ALTER TABLE customInfo
	ADD
		CONSTRAINT PK_customInfo
		PRIMARY KEY (
			customNo
		)





CREATE TABLE GoodInfo (
	goodno VARCHAR2(7) NOT NULL,
	sellercode varchar2(10) NOT NULL,
	classifyNo VARCHAR2(1) NOT NULL,
	model varchar(500),
	BuyPrice NUMBER(7),
	SellPrice NUMBER(7)
)





ALTER TABLE GoodInfo
	ADD
		CONSTRAINT PK_GoodInfo
		PRIMARY KEY (
			goodno
		)





CREATE TABLE campInven (
	code VARCHAR2(10) NOT NULL,
	goodNo VARCHAR2(7) NOT NULL,
	idle NUMBER(6) NOT NULL,
	now NUMBER(6) NOT NULL
)





CREATE TABLE CampInfo (
	code VARCHAR2(10) NOT NULL,
	campName VARCHAR2(50) NOT NULL,
	empno NUMBER(10),
	bussinessNo varchar2(12) NOT NULL,
	tel varchar2(15) NOT NULL,
	fax VARCHAR2(15)
)





ALTER TABLE CampInfo
	ADD
		CONSTRAINT PK_CampInfo
		PRIMARY KEY (
			code
		)





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





ALTER TABLE GoodInfo
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX





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





DROP TABLE GoodInfo 
	CASCADE CONSTRAINTS





DROP TABLE campInven 
	CASCADE CONSTRAINTS





DROP TABLE CampInfo 
	CASCADE CONSTRAINTS





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





ALTER TABLE customInfo
	ADD
		CONSTRAINT PK_customInfo
		PRIMARY KEY (
			customNo
		)





CREATE TABLE GoodInfo (
	goodno VARCHAR2(7) NOT NULL,
	sellercode varchar2(10) NOT NULL,
	classifyNo VARCHAR2(1) NOT NULL,
	model varchar(500),
	BuyPrice NUMBER(7),
	SellPrice NUMBER(7)
)





ALTER TABLE GoodInfo
	ADD
		CONSTRAINT PK_GoodInfo
		PRIMARY KEY (
			goodno
		)





CREATE TABLE campInven (
	code VARCHAR2(10) NOT NULL,
	goodNo VARCHAR2(7) NOT NULL,
	idle NUMBER(6) NOT NULL,
	now NUMBER(6) NOT NULL
)





CREATE TABLE CampInfo (
	code VARCHAR2(10) NOT NULL,
	campName VARCHAR2(50) NOT NULL,
	empno NUMBER(10),
	bussinessNo varchar2(12) NOT NULL,
	tel varchar2(15) NOT NULL,
	fax VARCHAR2(15)
)





ALTER TABLE CampInfo
	ADD
		CONSTRAINT PK_CampInfo
		PRIMARY KEY (
			code
		)





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





CREATE TABLE empInfo (
	empno NUMBER(10) NOT NULL,
	code VARCHAR2(10) NOT NULL,
	ename VARCHAR2(300) NOT NULL,
	auth number(1) NOT NULL,
	empDate DATE DEFAULT  Sysdate,
	pwd VARCHAR2(200) NOT NULL
)





ALTER TABLE empInfo
	ADD
		CONSTRAINT PK_empInfo
		PRIMARY KEY (
			empno
		)





CREATE TABLE SellerInfo (
	sellercode varchar2(10) NOT NULL,
	SellerCeo VARCHAR2(300),
	SellerName VARCHAR2(100) NOT NULL,
	SellerNo VARCHAR2(12) NOT NULL,
	SellerTel VARCHAR2(15) NOT NULL,
	SellerFax VARCHAR2(15)
)





ALTER TABLE SellerInfo
	ADD
		CONSTRAINT PK_SellerInfo
		PRIMARY KEY (
			sellercode
		)





CREATE TABLE CouponInfo (
	couponCode VARCHAR2(10) NOT NULL,
	usableNum NUMBER(3) NOT NULL,
	auth number(1),
	discount number(3) NOT NULL,
	deadLine DATE
)





ALTER TABLE CouponInfo
	ADD
		CONSTRAINT PK_CouponInfo
		PRIMARY KEY (
			couponCode
		)





CREATE TABLE Usecoupon (
	couponCode VARCHAR2(10) NOT NULL,
	empno NUMBER(10) NOT NULL,
	usedNum NUMBER(3) NOT NULL
)





ALTER TABLE Usecoupon
	ADD
		CONSTRAINT PK_Usecoupon
		PRIMARY KEY (
			couponCode,
			empno
		)





ALTER TABLE customInfo
	ADD
		CONSTRAINT FK_CampInfo_TO_customInfo
		FOREIGN KEY (
			code
		)
		REFERENCES CampInfo (
			code
		)





ALTER TABLE GoodInfo
	ADD
		CONSTRAINT FK_SellerInfo_TO_GoodInfo
		FOREIGN KEY (
			sellercode
		)
		REFERENCES SellerInfo (
			sellercode
		)





ALTER TABLE campInven
	ADD
		CONSTRAINT FK_CampInfo_TO_campInven
		FOREIGN KEY (
			code
		)
		REFERENCES CampInfo (
			code
		)





ALTER TABLE sellInfo
	ADD
		CONSTRAINT FK_GoodInfo_TO_sellInfo
		FOREIGN KEY (
			goodno
		)
		REFERENCES GoodInfo (
			goodno
		)





ALTER TABLE sellInfo
	ADD
		CONSTRAINT FK_CampInfo_TO_sellInfo
		FOREIGN KEY (
			code
		)
		REFERENCES CampInfo (
			code
		)





ALTER TABLE sellInfo
	ADD
		CONSTRAINT FK_customInfo_TO_sellInfo
		FOREIGN KEY (
			customNo
		)
		REFERENCES customInfo (
			customNo
		)





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





ALTER TABLE empInfo
	ADD
		CONSTRAINT FK_CampInfo_TO_empInfo
		FOREIGN KEY (
			code
		)
		REFERENCES CampInfo (
			code
		)





ALTER TABLE Usecoupon
	ADD
		CONSTRAINT FK_CouponInfo_TO_Usecoupon
		FOREIGN KEY (
			couponCode
		)
		REFERENCES CouponInfo (
			couponCode
		)





ALTER TABLE Usecoupon
	ADD
		CONSTRAINT FK_empInfo_TO_Usecoupon
		FOREIGN KEY (
			empno
		)
		REFERENCES empInfo (
			empno
		)





