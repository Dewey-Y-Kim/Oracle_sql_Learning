select * from tabs;
alter table 책정보 rename to book;
alter table 출판사테이블 rename to publisher;
alter table 작가테이블 rename to author;
select * from author;
drop table author;
select * from tab;
desc books;
desc book;
select * from book;
drop table book;
select * from tab;
drop table books;
drop table aaa;
drop table pub;
drop table publisher;

// 작가 입력 프로시져
desc author;
select * from user_sequences;

show user;
create or replace procedure author_putter(iname author.aname%type,idebut author.debut%type,iyear author.debut_year%type,imail author.email%type,ihome author.homepage%type)
is
begin
    insert into author(acode, aname, debut,debut_year,email,homepage)
    values(author_sq.NEXTVAL,iname,idebut,iyear,imail,ihome);
end;
exec author_putter('전우치','전우치전' ,'2010-01-01','sgec@email.com', 'https://azzd.com/');
exec author_putter('파울로','개미' ,'1991-06-04','bcd@email.com', 'https://paul.com/');
exec author_putter('이우혁','퇴마록' ,'1991-03-04','sgs@email.com', 'https://tml.com/');
exec author_putter('강하늘', '머시냐', '2000-02-03','gese@ges.sch', 'http://wej.com/');
select * from author;
desc pub;
create or replace procedure pub_putter(iname pub.pname%type, iceo pub.pceo%type, itel pub.ptel%type, ifax pub.pfax%type, iaddr pub.paddr%type)
is
begin
    insert into pub(pcode, pname, pceo, ptel, pfax, paddr)
    values (pub_sq.nextval, iname, iceo, itel, ifax, iaddr);
end;

exec pub_putter('한솔', '최명덕', '031-321-4321', '031-321-4322', '강남구');

select * from pub;
desc books;
create or replace procedure book_putter(i_name books.bname%type,i_price books.price%type, i_pub_date books.pub_date%type,
                                        i_genre books.genre%type,i_pname pub.pname%type, i_aname author.aname%type)
is
begin
    insert into books(isbn, bname, price, pub_date, genre, pcode, acode)
    values(book_sq.NEXTVAL, i_name, i_price, i_pub_date, i_genre,
    (select pcode from pub where pname=i_pname),
    (select acode from author where aname=i_aname));
end;
commit;
exec book_putter('연금술사', 12000,'2000-6-11', '소설', '한솔', '파울로');
select acode from author where aname=i_name
select * from books;
desc books;
select book_sq.nextval from dual;
select pcode from pub where pname='한솔';
select acode from author where aname='이우혁';
select * from pub;
select * from author;
select book_sq.NEXTVAL from dual;
alter table books rename column type to genre;