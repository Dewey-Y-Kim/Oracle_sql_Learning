select * from tab;
select * from sellerInfo;

select * from goodinfo;
desc goodinfo;
select * from sellerInfo;
delete from goodinfo;
select * from goodinfo;
delete from goodinfo;
insert all
into goodInfo(GOODNO, SELLERCODE, classifyno, model, buyprice, sellprice) values(1,4, 2,'123',1234,1231)

select * from dual;
select good_sq.nextval from dual;

goodno=null, Sellercode=4, classifyno=2, model='null S-7.00 C-4.00', buyprice=60000, sellprice=140000, Sellername=null, name=summit, sphStart=4.0, sphEnd=-7.0, cylStart=0.0, cylEnd=-4.0]
insert into goodInfo(GOODNO, SELLERCODE, classifyno, model, buyprice, sellprice) values(good_sq.nextval, '4', '2', 'null S-7.00 C-4.00', 60000,140000);

commit;
select * from goodinfo;

desc goodInfo;

select * from user_sequences;

create sequence good2_sq
start with 1
increment by 1;
select goodno from (select nvl(goodno,0) goodno from goodinfo order by goodno desc) where rownum=1;
delete * from goodInfo;
commit;
alter table goodInfo drop constraint FK_SELLERINFO_TO_GOODINFO;
alter table sellinfo modify (goodno number(7));
alter table sellInfo drop constraint FK_GOODINFO_TO_SELLINFO;
rollback;
delete constraint where constraints_name = 'FK_SELLERINFO_TO_GOODINFO';

desc sellinfo;
ALTER TABLE sellInfo
	ADD
		CONSTRAINT FK_GoodInfo_TO_sellInfo
		FOREIGN KEY (
			goodno
		)
		REFERENCES GoodInfo (
			goodno
		);
        
select * from goodinfo order by goodno;
commit;
select distinct name, g.sellercode, sellername, classifyno, buyprice,sellprice from goodinfo g join sellerinfo s on g.sellercode=s.sellercode;
select max(goodno) from (select count(goodno) goodno from goodinfo union (select goodno from (select goodno from goodinfo order by goodno desc) where rownum=1));
;
select (nvl(select goodno last from goodinfo order by goodno desc,0)),(select count(goodno) goodno from goodinfo) goodno) from dual;
	select goodno from (select nvl(goodno,0) goodno,count(goodno) from goodinfo order by goodno desc) where rownum=1;
select * from sellerinfo;
select model from goodinfo;
delete from goodInfo;
alter table goodinfo add name varchar(100);

select distinct name, g.sellercode, sellername, classifyno, buyprice, sellprice from goodinfo g join sellerinfo s on g.sellercode=s.sellercode order by sellername desc;

		select * from;
		(select * from (select distinct name, g.sellercode, sellername, classifyno, buyprice, sellprice from goodinfo g join sellerinfo s on g.sellercode=s.sellercode order by sellername desc );
		<if test="searchWord!=null">
		and ${searchKey} like '%${searchWord}%'
		</if>
		order by sellername desc) 
		<![CDATA[where rownum<=${linePerPage}*${nowPage} order by sellercode asc]]>)
		<choose>
		<when test="nowPage!=totalPage">  
		<![CDATA[where rownum<=${linePerPage} order by sellercode desc]]>
		</when>
		<when test="nowPage==totalPage">
		<![CDATA[where rownum<=${lastPageLine} order by sellercode desc]]>


		<if test="searchWord!=null">
		and ${searchKey} like '%${searchWord}%'
		</if>
		 order by sellername desc) 
		<![CDATA[where rownum<=${linePerPage}*${nowPage} order by sellername asc]]>)
		<choose>
		<when test="nowPage!=totalPage">  
		<![CDATA[where rownum<=${linePerPage} order by sellername desc]]>
		</when>
		<when test="nowPage==totalPage">
			<![CDATA[where rownum<=${lastPageLine} order by sellername desc]]>
		</when>
		</choose>