select no, title,content from board where title like '%%' order by no desc;
select b.no, b.title, r.name, b.id, b.hit, to_char(b.writedate,'MM-DD HH:MI') writedate from board b join regist r on b.id = r.id where b.no=50;

select * from board;
update board set title='요거', content='조거' where no=87 and id='test1';
delete from board where no=45 and id='tester';