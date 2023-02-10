-- 도서 등록 프로시져
select distinct name from user_source;
desc pub_tbl;
desc author_tbl;
desc books;
select * from user_sequences;
create or replace procedure bookInsert(i_bookname in books.bookname%type,
                                       i_price in books.price%type,
                                       i_pub_date in books.pub_date%type,
                                       i_category in books.category%type,
                                       i_author in author_tbl.author_name%type,
                                       i_pub_name in pub_tbl.pub_name%type,
                                       r_result out number -- 등록결과 출력을 위한 변수
                                       )
is

begin
    r_result := 1; --결과값의 초기값
    insert into books(isbn, bookname, price, pub_date,category,pub_code,author_code,writedate)
    values(book_sq.nextval,i_bookname,i_price,i_pub_date,i_category,
    (select author_code from author_tbl where author_name=i_author),
    (select pub_code from pub_tbl where pub_name=i_pub_name),sysdate);
    commit; -- 
    exception
        when others then
        r_result := 0; --오류발생시 결과값 
end;
commit;
select * from books;
: Oracle
가격 : 20000
출판일(예: 2022-09-10) :
2022-09-10
카테고리 : IT
출판사명 : open
작가명 : lee
desc books;
insert into books(isbn, bookname, price, pub_date,category,pub_code,author_code,writedate)
    values(99999,'Oracle',20000,'2022-09-10','IT',
    80,
    1,sysdate);

select * from user_sequences;
select pub_code from pub_tbl where pub_name='다솔';
select * from pub_tbl;
select author_code from author_tbl where author_name='lee';
select * from tab;
select * from user_squenses;
variable s number;
exec bookInsert('oracle',20000,2022-10-20,'IT','lee','open',s);
select * from user_source;
select distinct name, text from user_Source order by name;
select * from user_source where name = upper('emp_select');
select * from author_tbl;
select * from pub_tbl;
insert into pub_tbl(pub_code, pub_name, pub_tel,pub_writeDate)
values (pub_sq.nextval,'open', '031-123-1234',sysdate);
desc books;
desc author_tbl;


select * from pub_tbl;
select * from author_tbl;
create or replace procedure book_all_select(book_result out sys_refcursor)
is
begin
    open book_result for 
        select b.isbn, b.bookname, b.price, to_char(b.pub_date,'YYYY-MM-DD'), b.category, a.author_name, p.pub_name 
        from books b join author_tbl a on b.author_code=a.author_code
        join pub_tbl p on b.pub_code = p.pub_code order by b.bookname asc;
end;

-- 책 제목 일부를 입력받아 조회하는 프로시져 만들기
create or replace procedure book_serch(searchword in books.bookname%type,
                                        book_search_list out sys_refcursor)
is
begin
    open book_search_list for
    select b.isbn, b.bookname, b.price,b.category,a.author_name,p.pub_name
    from books b 
    join author_tbl a on b.author_code=a.author_code
    join pub_tbl p on p.pub_code=b.pub_code where bookname like '%'||searchword||'%';
end;

      
execute book_search("검도"); 
select b.isbn, b.bookname, b.price,b.category,a.author_name, p.pub_name
    from books b 
    join author_tbl a on b.author_code=a.author_code;
    join pub_tbl p on p.pub_code=b.pub_code; 
    and b.bookname like ('검도');
    
select b.isbn,b.bookname,p.pub_name from books b join pub_tbl p on p.pub_code=b.
select * from books;
select * from pub_tbl;
select * from author_tbl;
    select b.isbn, b.bookname, b.price,b.category,a.author_name,p.pub_name
    from books b join author_tbl a on b.author_code=a.author_code
    join pub_tbl p on p.pub_code=b.author_code; ;
select * from books join author_tbl a on b.author_code=a.author_code
    join pub_tbl p on p.pub_code=b.author_code; ;

desc author_tbl;