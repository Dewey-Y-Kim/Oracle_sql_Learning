desc optometryregistry;
alter table optometryregistry add memo varchar(2000);
alter table optometryregistry add OPTOMETRYNO number(10);
commit;
select * from optometryregistry;
delete from optometryregistry where customno=0;
rollback;
select * from optometryregistry;
select customNo,to_Char(registdate,'YYYY-MM-DD') registDate from OptometryRegistry where customNo=2 and Optometryno=opt_sq.currval;
select *from campInfo;
select * from customInfo;
desc campInfo;
desc customInfo;
select cus.customNo, cus.name, cus.birth, cus.email, cus.addr1, cus.addr2, cus.tel, cus.gender, cus.registdate, cam.campname, cus.code from customInfo cus join campInfo cam on cus.code = cam.code
		 
		where tel like '%4242%'
		 
		 order by cus.CUSTOMNO desc;
select cus.customNo, cus.name, cus.birth, cus.email, cus.addr1, cus.addr2, cus.tel, cus.gender, cus.registdate, code from customInfo cus ;
select * from
(select * from
		 (select c.CUSTOMNO, c.name, c.birth, c.email, c.addr1, c.addr2, c.tel, c.gender, c.registdate, c.code from customInfo c
		 
		where tel like '%4243%'
		 
		 order by c.CUSTOMNO desc)
		  where rownum<=20*1 order by CUSTOMNO asc )
		   
		 where rownum<=20 order by CUSTOMNO desc;
select * from
		(select * from
		 (select c.customNo, c.name, c.birth, c.email, c.addr1, c.addr2, c.tel, c.gender, c.registdate, cam.campname, c.code from customInfo cos join campInfo cam on c.code = cam.code
		 
		and c.tel like '%4242%'
		 
		 order by c.CUSTOMNO desc)
		  where rownum<=20*1 order by c.CUSTOMNO asc )
		   
		 where rownum<=20 order by c.CUSTOMNO desc;
         
select * from
		(select * from
		 (select c.CUSTOMNO, c.name, c.birth, c.email, c.addr1, c.addr2, c.tel, c.gender, c.registdate, c.code from customInfo c
		 
		and tel like '%4243%'
		 
		 order by c.CUSTOMNO desc)
		  where rownum<=20*1 order by CUSTOMNO asc )
		   
		 where rownum<=20 order by CUSTOMNO desc
         
         
;

select * from tab;
select * from sellinfo;