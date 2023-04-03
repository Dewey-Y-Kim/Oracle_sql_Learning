create table test(no int);

CREATE TABLE userInformation (
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
create table test
-- 차량데이터
CREATE TABLE 'Cardata' (
	`no`             INT          NOT NULL,
	`model_name`     VARCHAR(200) NOT NULL,
	`brand`          VARCHAR(200) NOT NULL,
	`price`          int(200)     NOT NULL,
	`fuel_type`      VARCHAR(200) NOT NULL,
	`body_type`      VARCHAR(200) NOT NULL,
	`passenger`      INT          NOT NULL,
	`drivable_dist`  int          NULL,
	`writedate`      DATE         NOT NULL,
	`external_color` VARCHAR(200) NOT NULL,
	`internal_color` VARCHAR(200) NOT NULL
);
COMMENT '차량데이터';
commit;


show tables;
drop table userinformation;

create table car (
    seq int not null auto_increment,
    model_name varchar(20) not null ,
    brand varchar(10) not null ,
    price int not null ,
    fuel_type varchar(10) not null ,
    body_type varchar(5) not null ,
    drivable_dist int(4) not null ,
    passenger int not null ,
    release_year date not null ,
    overall_length int(5) not null ,
    overall_width int(5) not null ,
    overall_height int(5) not null ,
    wheel_base int(5) not null ,
    tread_front int(5) not null ,
    tread_rear int(5) not null ,
    engine_displacement int(5) not null ,
    max_power varchar(10) not null ,
    drive_system varchar(10) not null ,
    transmission_type varchar(15) not null ,
    tire_wheel_size int(4) not null ,
    fuel_tank_capacity int(3) not null ,
    front_suspension_type varchar(10) not null ,
    rear_suspension_type varchar(10) not null ,
    front_brake_type varchar(10) not null ,
    rear_brake_type varchar(10) not null,
    primary key (seq)
)charset =utf8;
show tables;
select * from car;

create TABLE SEQUENCES(
    name varchar(32),
    currval BIGINT unsigned
)
-- 시퀀스로 사용할 테이블
create TABLE SEQUENCES(
    name varchar(32),
    currval BIGINT unsigned
)
engine = innoDB;


-- 시퀀스로 사용할 프로시저 생성
-- 'IN' 으로 시퀀스 명을 받음
-- call [프로시저명]('[시퀀스명]')
delimiter $$
    create procedure `create_sequence` (IN the_name text)
    modifies sql data
    deterministic
    begin
        delete from SEQUENCES where name = the_name;
        insert into SEQUENCES values(the_name, 0);
    end;


-- 생성한 시퀀스(테이블)의 다음 값을 가져오는 함수
delimiter $$
    create function `nextval` (the_name VARCHAR(32))
    RETURNS BIGINT unsigned
    MODIFIES SQL DATA
    Deterministic
    begin
        declare ret BIGINT unsigned;
        update SEQUENCES set currval = currval +1 where name = the_name;
        select currval into ret from SEQUENCES where name = the_name limit 1;
        return ret;
    end;