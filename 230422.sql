select * from goodInfo;
alter table goodinfo add BrandCode number(6);
select * from goodinfo;
select * from goodinfo order by brandcode desc;
commit;
select * from goodinfo order by name desc;
delete from goodinfo;
commit;
rollback;
select distinct name,brandcode from goodinfo;
select * from goodinfo;
select count(brandcode) from (select distinct brandcode from goodinfo);
select * from goodinfo;
select max(brandcode) brandcode from (select count(brandcode) brandcode from (select distinct brandcode from goodinfo) union (select brandcode from (select brandcode from goodinfo order by brandcode desc) where rownum=1));
select distinct name, brandcode from goodinfo;
select * from goodinfo where brandcode = 2;
select * from couponinfo;
desc couponinfo;
SELECT * FROM EMPINFO;
select * from tab;
select * from custominfo;
desc custominfo;
ALTER TABLE SELLINFO DROP CONSTRAINT SYS_C007292;
select * from user_constraints where Table_name='SELLINFO';
DESC SELLINFO;
ALTER TABLE SELLINFO CUSTOMNO NULL;
select customNo, name, to_char(birth,'YYYY-MM-DD'), email, addr1, addr2, gender, code, tel from customInfo where customNo=15;
select * from customInfo order by customno;
select * from tab;
select * from optometryregistry;
desc optometryregistry;
select * from user_sequences;
drop sequence opto_sq;
create sequence opt_sq;
commit;
select * from optometryregistry;
desc optometryregistry;
commit;
alter table opt