select campname, sum, sellNo, round(sum/sellNo,-2) avg from (
		select code,sum(qtt*realprice) sum, count(sellNo) sellNo from 
		sellInfo where to_char(selldate,'YYYY-MM-DD')='2023-05-01'
		group by code) s join campInfo c on c.code=s.code order by c.code;
