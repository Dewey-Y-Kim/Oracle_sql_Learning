create table DATA(
    no number(6) primary key,
    title varchar2(300) not null,
    content CLOB not null,
    id varchar2(30) not null,
    hit number(6),
    writedate DATE  default sysdate,
    ip varchar(15) not null
);

desc board;
CREATE TABLE datafile(
    no number(6) not null,
    filename varchar2(500) not NULL
    
);
alter table data add constraint data_regist_fk
Foreign key (id) references regist(id);
alter table datafile add constraint data_datafile_fk
Foreign key (no) references data(no);
select * from user_constraints;
desc regist;
desc data;
desc datafile;
select * from tab;