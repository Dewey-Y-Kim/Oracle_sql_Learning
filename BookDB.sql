create table BookDocker(
    addedNum char(5) not null,
    title varchar2(30000) not null,
    volno number(3), --volume Number
    writer varchar2(20),
    publisher varchar2(20),
    bookcost number(7),
    dock number(2) default to_number(concat(0,substr(addednum,3,1))), --부가번호 이용 분류 0-종이책 1-전자책
    isbn char(13)
);