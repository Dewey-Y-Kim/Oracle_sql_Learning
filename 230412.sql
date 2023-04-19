insert into campinfo( code , campname , empno , bussinessNo , tel , fax ) values(0,'본사',0,'000-11-11111','02.000.0000','02.000.0001');
insert into campinfo( code , campname , empno , bussinessNo , tel , fax ) values(code_sq.nextval,'가양',1,'111-11-11111','031.1234.1234','31.12341235');
insert into campinfo( code , campname , empno , bussinessNo , tel , fax ) values(code_sq.nextval,'용인',2,'123-12-12345','031.2345.2345','031.2345.2346');
insert into campinfo( code , campname , empno , bussinessNo , tel , fax ) values(code_sq.nextval,'분당',3,'234-23-23456','031.3456.3456','031.3456.3457');
insert into campinfo( code , campname , empno , bussinessNo , tel , fax ) values(code_sq.nextval,'옥천',4,'345-34-34567','031.4567.4567','031.4567.4568');
insert into campinfo( code , campname , empno , bussinessNo , tel , fax ) values(code_sq.nextval,'수지',5,'456-45-45678','031.5678.5678','031.5678.5679');
insert into empinfo( empno , code , ename , auth , pwd ) values(0,0,'본사관리자','4','12345');

insert into empinfo( empno , code , ename , auth , pwd ) values(emp_sq.nextval,6,'안경사1호','2','12345');
insert into empinfo( empno , code , ename , auth , pwd ) values(emp_sq.nextval,7,'안경사2호','2','12345');
insert into empinfo( empno , code , ename , auth , pwd ) values(emp_sq.nextval,8,'안경사3호','2','12345');
insert into empinfo( empno , code , ename , auth , pwd ) values(emp_sq.nextval,9,'안경사4호','2','12345');
insert into empinfo( empno , code , ename , auth , pwd ) values(emp_sq.nextval,10,'안경사5호','2','12345');
select * from empinfo;

insert into empinfo( empno , code , ename , auth , pwd ) values(emp_sq.nextval,6,'가양직원1','1','12345');
insert into empinfo( empno , code , ename , auth , pwd ) values(emp_sq.nextval,6,'가양직원2','1','12345');
insert into empinfo( empno , code , ename , auth , pwd ) values(emp_sq.nextval,6,'가양직원3','1','12345');
insert into sellerinfo( sellercode,sellerceo,sellername,sellerno,sellertel,sellerfax ) 	values(	seller_sq.nextval,'시원사장','시원','333-33-33333','02.111.1111','02.111.1112');
insert into sellerinfo( sellercode,sellerceo,sellername,sellerno,sellertel,sellerfax ) 	values(	seller_sq.nextval,'쏘우사장','쏘우','444-44-44444','031.222.2222','02.222.2223');
insert into sellerinfo( sellercode,sellerceo,sellername,sellerno,sellertel,sellerfax ) 	values(	seller_sq.nextval,'다비치사장','다비치','555-55-55555','031.333.3333','031.333.3334');
select * from campinfo;
select * from empinfo;
select * from sellerinfo;
select * from tab;
select * from campinfo;
desc empinfo;
desc campinfo;
select e.code, e.auth, c.campname from empinfo e join campinfo c on e.code=c.code where e.empno=46 and e.pwd=12345;