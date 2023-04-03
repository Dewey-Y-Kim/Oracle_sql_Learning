-- 사용자정보
CREATE TABLE `userInformation` (
	`no`           INT            NOT NULL COMMENT 'sq', -- 번호
	`name`         VARCHAR(30)    NOT NULL COMMENT '이름', -- 이름
	`gender`       BOOLEAN        NOT NULL COMMENT '성별', -- 성별
	`age`          INT(5)         NOT NULL COMMENT '나이', -- 나이
	`phone_Number` VARCHAR(20)    NOT NULL COMMENT '전화번호', -- 전화번호
	`email`        VARBINARY(100) NOT NULL COMMENT '이메일', -- 이메일
	`address`      VARCHAR(300)   NOT NULL COMMENT '주소', -- 주소
	`addrdetail`   VARCHAR(100)   NOT NULL COMMENT '주소상세', -- 주소상세
	`id`           VARCHAR(30)    NOT NULL COMMENT '아이디', -- 아이디
	`password`     VARCHAR(30)    NOT NULL COMMENT '패스워드', -- 패스워드
	`joindate`     DATE           NOT NULL COMMENT '가입일' -- 가입일
)
COMMENT '사용자정보';
use test;
select * from userInformation;
SELECT NOW(), SLEEP(2), NOW();
use test;
show databases;
select * from tab;
-- 차량데이터
CREATE TABLE `Cardata` (
	`no`             INT          NOT NULL COMMENT 'Car_sq', -- 데이터넘버링
	`model_name`     VARCHAR(200) NOT NULL COMMENT '모델명', -- 모델명
	`brand`          VARCHAR(200) NOT NULL COMMENT '브랜드', -- 브랜드
	`price`          int(200)     NOT NULL COMMENT '가격', -- 가격
	`fuel_type`      VARCHAR(200) NOT NULL COMMENT '주행거리', -- 주행거리
	`body_type`      VARCHAR(200) NOT NULL COMMENT '연료타입', -- 연료타입
	`passenger`      INT          NOT NULL COMMENT '탑승인원', -- 탑승인원
	`drivable_dist`  int          NULL     COMMENT '주행가능거리', -- 주행가능거리
	`writedate`      DATE         NOT NULL COMMENT 'default now()', -- writeDate
	`external_color` VARCHAR(200) NOT NULL COMMENT '외장색상', -- 외장색상
	`internal_color` VARCHAR(200) NOT NULL COMMENT '내장색상' -- 내장색상
)
COMMENT '차량데이터';
show tables;
create table sequences(name varchar(30), currval Bigint unsigned) 
create sequence car_sequence;