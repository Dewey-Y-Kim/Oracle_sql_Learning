create table OptometryRegistry(
    customno number(10) not NULL,
    rsph number(5,2),
    rcyl number(5,2),
    raxis number(3),
    radd number(5,2),
    lsph number(5,2),
    lcyl number(5,2),
    laxis number(3),
    ladd number(5,2),
    pd number(5,2),
    registDate date default(sysdate)
);
drop table optometryRegistry;
select * from user_sequences;
create sequence opto_sq;

alter table OptometryRegistry add optomeryNo number(10);
alter table OptometryRegistry rename column optomeryno to optometryNo;
alter table OptometryRegistry modify optometryNo number(10) default opto_sq.nextval;
ALTER TABLE OptometryRegistry
	ADD
		CONSTRAINT PK_optometryRegistry
		PRIMARY KEY (
			optometryNo
		);
        
select * from tab;
select * from customInfo;
desc customInfo;
select * from campInfo;
desc optometryRegistry;
alter table optometryRegistry add memo varchar2(2000);
alter table customInfo rename column addr to addr1;
alter table customInfo add addr2 varchar2(100);
alter table customInfo drop column memo;
desc optometryRegistry;
alter table customInfo modify tel varchar(15);

		value(custom_sq.nextval, #{name}, #{birth}, #{gender}, #{tel}, #{email}, #{addr1}, #{addr2}, ${code})
       ; 
commit;
select * from customInfo;
desc custominfo;
alter table customInfo modify registdate date default sysdate;
update customInfo set tel ='010-4243-4243'
update customInfo set registdate=sysdate;

select * from
		(select * from
		 (select CUSTOMNO, c.name, c.birth, c.email, c.addr1, c.addr2, c.tel, c.gender, c.registdate, cam.campname, c.code from customInfo c join campInfo cam on c.code = cam.code 
		and name like '%손놈1호%'
		 order by CUSTOMNO desc)
          where rownum<=5*10 order by CUSTOMNO asc);
          
select * from tab;

desc sellinfo;
alter table custominfo modify customno null;
select * from user_constraints;
alter table sellinfo drop constraint 