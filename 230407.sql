select * from tab;
purge RECYCLEBIN;
/* 고객정보 */
DROP TABLE customInfo 
	CASCADE CONSTRAINTS;

/* 상품정보 */
DROP TABLE GoodInfo 
	CASCADE CONSTRAINTS;

/* 매장재고 */
DROP TABLE campInven 
	CASCADE CONSTRAINTS;

/* 매장정보 */
DROP TABLE CampInfo 
	CASCADE CONSTRAINTS;

/* 판매정보 */
DROP TABLE sellInfo 
	CASCADE CONSTRAINTS;

/* 안경사정보 */
DROP TABLE empInfo 
	CASCADE CONSTRAINTS;

/* 거래처정보 */
DROP TABLE SellerInfo 
	CASCADE CONSTRAINTS;

/* 고객정보 */
CREATE TABLE customInfo (
	customNo NUMBER(10) NOT NULL, /* 고객번호 */
	name VARCHAR2(300) NOT NULL, /* 이름 */
	birth DATE, /* 생년월일 */
	email VARCHAR2(300), /* 이메일 */
	addr VARCHAR2(100), /* 주소 */
	tel VARCHAR2(12) NOT NULL, /* 전화번호 */
	gender VARCHAR2(1), /* 성별 */
	memo VARCHAR2(2000), /* 메모 */
	registDate DATE, /* 가입일 */
	code VARCHAR2(10) /* 가입매장 */
);

ALTER TABLE customInfo
	ADD
		CONSTRAINT PK_customInfo
		PRIMARY KEY (
			customNo
		);

/* 상품정보 */
CREATE TABLE GoodInfo (
	goodno VARCHAR2(7) NOT NULL, /* 상품번호 */
	sellercode varchar2(10) NOT NULL, /* 거래처코드 */
	classifyNo VARCHAR2(1) NOT NULL, /* 상품분류번호 */
	model varchar(500) /* 제품명 */
);

ALTER TABLE GoodInfo
	ADD
		CONSTRAINT PK_GoodInfo
		PRIMARY KEY (
			goodno
		);

/* 매장재고 */
CREATE TABLE campInven (
	code VARCHAR2(10) NOT NULL, /* 매장코드 */
	goodNo VARCHAR2(7) NOT NULL, /* 상품번호 */
	idle NUMBER(6) NOT NULL, /* 상품정규수량 */
	now NUMBER(6) NOT NULL /* 현수량 */
);

ALTER TABLE campInven
	ADD
		CONSTRAINT PK_campInven
		PRIMARY KEY (
			code
		);

/* 매장정보 */
CREATE TABLE CampInfo (
	code VARCHAR2(10) NOT NULL, /* 매장코드 */
	campName VARCHAR2(50) NOT NULL, /* 지점명 */
	empno NUMBER(10) NOT NULL, /* 대표 */
	bussinessNo varchar2(12) NOT NULL, /* 사업자번호 */
	tel varchar2(15) NOT NULL, /* 전화번호 */
	fax VARCHAR2(15) /* 팩스번호 */
);

ALTER TABLE CampInfo
	ADD
		CONSTRAINT PK_CampInfo
		PRIMARY KEY (
			code
		);

/* 판매정보 */
CREATE TABLE sellInfo (
	customNo NUMBER(10) NOT NULL, /* 고객번호 */
	sellDate DATE DEFAULT Sysdate, /* 판매일 */
	promiceDate DATE, /* 약속일 */
	qtt NUMBER(4) NOT NULL, /* 수량 */
	empno NUMBER(10) NOT NULL, /* 판매자 */
	sellstatus char(1) DEFAULT 0 NOT NULL, /* 판매상태 */
	goodno VARCHAR2(7) NOT NULL, /* 상품번호 */
	code VARCHAR2(10) NOT NULL /* 매장코드 */
);

ALTER TABLE sellInfo
	ADD
		CONSTRAINT PK_sellInfo
		PRIMARY KEY (
			customNo
		);

/* 안경사정보 */
CREATE TABLE empInfo (
	code VARCHAR2(10) NOT NULL, /* 소속 */
	empno NUMBER(10) NOT NULL, /* 직원번호 */
	ename VARCHAR2(300) NOT NULL, /* 직원명 */
	auth number(1) NOT NULL, /* 권한 */
	empDate DATE DEFAULT  Sysdate /* 입사일 */
);

ALTER TABLE empInfo
	ADD
		CONSTRAINT PK_empInfo
		PRIMARY KEY (
			code
		);

/* 거래처정보 */
CREATE TABLE SellerInfo (
	sellercode varchar2(10) NOT NULL, /* 거래처 코드 */
	SellerCeo VARCHAR2(300), /* 거래처대표 */
	SellerName VARCHAR2(100) NOT NULL, /* 거래처명 */
	SellerNo VARCHAR2(12) NOT NULL, /* 거래처사업자번호 */
	SellerTel VARCHAR2(15) NOT NULL, /* 거래처전화번호 */
	SellerFax VARCHAR2(15) /* 거래처팩스 */
);

ALTER TABLE SellerInfo
	ADD
		CONSTRAINT PK_SellerInfo
		PRIMARY KEY (
			sellercode
		);

ALTER TABLE customInfo
	ADD
		CONSTRAINT FK_CampInfo_TO_customInfo
		FOREIGN KEY (
			code
		)
		REFERENCES CampInfo (
			code
		);

ALTER TABLE GoodInfo
	ADD
		CONSTRAINT FK_SellerInfo_TO_GoodInfo
		FOREIGN KEY (
			sellercode
		)
		REFERENCES SellerInfo (
			sellercode
		);

ALTER TABLE campInven
	ADD
		CONSTRAINT FK_CampInfo_TO_campInven
		FOREIGN KEY (
			code
		)
		REFERENCES CampInfo (
			code
		);

ALTER TABLE sellInfo
	ADD
		CONSTRAINT FK_GoodInfo_TO_sellInfo
		FOREIGN KEY (
			goodno
		)
		REFERENCES GoodInfo (
			goodno
		);

ALTER TABLE sellInfo
	ADD
		CONSTRAINT FK_CampInfo_TO_sellInfo
		FOREIGN KEY (
			code
		)
		REFERENCES CampInfo (
			code
		);

ALTER TABLE sellInfo
	ADD
		CONSTRAINT FK_empInfo_TO_sellInfo
		FOREIGN KEY (
			code
		)
		REFERENCES empInfo (
			code
		);

ALTER TABLE sellInfo
	ADD
		CONSTRAINT FK_customInfo_TO_sellInfo
		FOREIGN KEY (
			customNo
		)
		REFERENCES customInfo (
			customNo
		);

ALTER TABLE empInfo
	ADD
		CONSTRAINT FK_CampInfo_TO_empInfo
		FOREIGN KEY (
			code
		)
		REFERENCES CampInfo (
			code
		);