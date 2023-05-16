select name, tel, price, qtt, sellNo from 
		  (select distinct customNo ,s.sellno, promisedate, price, s.qtt from 
		    (select  sellNo, sum(qtt*realprice) price, sum(qtt) qtt from sellInfo group by sellNo) s 
		  join sellInfo i on s.sellNo=i.sellNo where to_char(promisedate,'YYYY-MM-DD')='2023-05-04' order by s.sellno) p 
		join customInfo c on c.customNo=p.customNo where code=6;
        
    select name, tel, price,qtt,sellNo from
         (select distinct customNo ,s.sellno, promisedate, price, s.qtt from 
		    (select  sellNo, sum(qtt*realprice) price, sum(qtt) qtt from sellInfo where code=6 group by sellNo) s 
		  join sellInfo i on s.sellNo=i.sellNo where to_char(promisedate,'YYYY-MM-DD')='2023-05-04' order by s.sellno) p
    join customInfo c on c.customNo=p.customNo;
select * from customInfo;
select * from user_sequences;
select refund_sq.nextval from dual;
select refund_sq.currval from dual;
select * from refundlist;


totalPage=0, nowPage=1, totalLine=0, linePerPage=20, pagingCnt=5, lastPage=0, lastPageLine=0, idxPage=1, lastIdxPage=0
select count(No) totalLine from noticebbs;
desc noticebbs;
select * from
		(select * from
		(select no, title, e.ename writer, to_char(writedate,'YY-MM-DD') writedate,hit from noticeBBS n join empInfo e on n.empno = e.empno
		 order by no desc) 
		<![CDATA[where rownum<=${linePerPage}*${nowPage} order by no asc]]>)
		<choose>
		<when test="nowPage!=totalPage">  
		<![CDATA[where rownum<=${linePerPage} order by no desc]]>
		</when>
		<when test="nowPage==totalPage">
		<![CDATA[where rownum<=${lastPageLine} order by no desc]]>
		</when>
		</choose> 