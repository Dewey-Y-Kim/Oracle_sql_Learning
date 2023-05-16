select * from tab;
select * from goodInfo where classifyno = 1;
select * from sellInfo;
purge recyclebin;
select distinct classifyno, name, brandcode from goodInfo;
desc goodInfo;
desc sellInfo;
select * from empInfo;

select empno,code from empInfo where code!=0;
alter table sellInfo modify qtt default 1;
alter table sellinfo modify sellstatus default 0;
select Max(sellno) sellno from sellInfo Union
select sellno from (select nvl(sellno,0) from sellInfo order by sellno desc) where rownum=1;
desc sellinfo;
select nvl(sellno,0) sellno from (select Max(sellno) sellno from sellInfo union
select sellno from (select nvl(sellno,0) sellno from sellInfo order by sellno desc) where rownum=1);
select nvl(sellno,0) from sellInfo order by sellno desc;
desc sellinfo;
select * from sellInfo order by sellno;
delete from sellInfo;
commit; 
rollback;
desc sellInfo;
alter table sellInfo rename column promicedate to promisedate;
commit;

select * from goodInfo;
select * from sellInfo order by sellno;
desc sellInfo;

alter table sellInfo modify selldate default sysdate;

select *
select sellNo, goodNo, qtt, realPrice, empno, sellstatus from sellInfo where code=${code} and to_char(sellDate,'YYYY-MM-DD')=#{date}
select distinct model, sellno, ename from 
select distinct s.sellNo, s.goodNo, s.qtt, s.realPrice, s.empno, s.sellstatus,to_char(s.selldate,'YYYY-MM-DD') selldate, g.model, e.ename

		from sellInfo s join goodinfo g on s.goodNo=g.goodNo  join empInfo e on e.empno=s.empno
		where s.code=6 and to_char(s.sellDate,'YYYY-MM-DD')='2023-04-28' order by s.sellNo, g.classifyno;
        
select distinct s.sellNo, s.goodNo, s.qtt, s.realPrice, s.empno, s.sellstatus,to_char(s.selldate,'YYYY-MM-DD') selldate, g.model, e.ename
		from sellInfo s join goodinfo g on s.goodNo=g.goodNo  join empInfo e on e.empno=s.empno
		where s.code=6 and to_char(s.sellDate,'YYYY-MM-DD')='2023-04-28';
        
select  g.model, s.sellNo, e.ename, s.qtt, s.realPrice, s.sellstatus,to_char(s.selldate,'YYYY-MM-DD') selldate
select s.sellNo, s.goodNo, s.qtt, s.realPrice, s.empno, s.sellstatus,to_char(s.selldate,'YYYY-MM-DD') selldate, g.model, e.ename
		from sellInfo s join goodinfo g on s.goodNo=g.goodNo  join empInfo e on e.empno=s.empno
		where s.code=6 and to_char(s.sellDate,'YYYY-MM-DD')='2023-04-28' order by s.sellNo, g.classifyno group by sellno;
		from sellInfo s join goodinfo g on s.goodNo=g.goodNo  join empInfo e on e.empno=s.empno
		where s.code=6 and to_char(s.sellDate,'YYYY-MM-DD')='2023-04-28'
        
        
select * from sellInfo;
drop table sellInfo;
CUSTOMNO             NUMBER(10)   
SELLNO               NUMBER(10)   
SELLDATE             DATE         
PROMISEDATE          DATE         
QTT         NOT NULL NUMBER(4)    
EMPNO       NOT NULL NUMBER(10)   
SELLSTATUS  NOT NULL CHAR(1)      
GOODNO      NOT NULL NUMBER(7)    
CODE        NOT NULL VARCHAR2(10) 
REALPRICE   NOT NULL NUMBER(7)    

create table sellList(
    customNo number(10),
    SELLNO NUMBER(10),
    SELLDATE DATE default sysdate,
    PROMISEDATE DATE,
    sellstatus char(1) default 0,
    code varchar2(10) not null
    empno number(10)
    );
desc sellList;
create table sellData(
    sellno number(10) not null,
    goodno number(7) not null,
    qtt number(4) not null,
    realprice number(7) not null
    );
select * from sellinfo;

select * from sellinfo order by sellno;
select * from tab;
select * from selllist;
select * from selldata;
flashback table "BIN$+m9KW6EbTSPgUBGsAgAMcw==$0" to before drop;
sel

select distinct s.sellNo, s.empno, s.sellstatus,selldate, e.ename
		from sellInfo s join empInfo e on e.empno=s.empno
		where s.code=6 and to_char(s.sellDate,'YYYY-MM-DD')='2023-04-28' order by s.sellNo;
select  from sellInfo where sellno=1;

select s.sellNo, s.goodNo, s.qtt, s.realPrice, g.model
		from sellInfo s join goodinfo g on s.goodNo=g.goodNo
		where s.code=6 and to_char(s.sellDate,'YYYY-MM-DD')='2023-04-29' order by s.sellNo;
        
select s.sellNo, s.goodNo, s.qtt, s.realPrice, g.model from sellInfo s join goodinfo g on s.goodNo=g.goodNo
		where s.code=6 and to_char(s.sellDate,'YYYY-MM-DD')='2023-04-29' order by s.sellNo
        ;
select * from sellInfo s where s.code=6 and to_char(s.sellDate,'YYYY-MM-DD')='2023-04-29' order by sellNo;;
select distinct s.sellNo, s.empno, s.sellstatus, to_char(selldate,'YYYY-MM-DD HH24:MI:SS') selldate, e.ename
		from sellInfo s join empInfo e on e.empno=s.empno
		where s.code=6 and to_char(s.sellDate,'YYYY-MM-DD')='2023-04-29' order by s.sellNo;
select * from sellInfo;
delete from sellInfo s where to_char(s.sellDate,'YYYY-MM-DD')='2023-04-29';
commit;

// 당일 판매량
select * from sellInfo where code = 6 and to_char(sellDate,'YYYY-MM-DD')='2023-04-29' order by sellno;
select distinct sellno from sellInfo where to_char(selldate,'YYYY-MM-DD')='2023-04-29' order by sellno;
commit;
select * from sellInfo order by sellno;