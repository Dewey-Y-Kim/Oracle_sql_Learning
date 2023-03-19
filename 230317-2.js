db.createCollection('member');
show collections;
db.member.insertOne({name:'잠탱씨',id:'real',tel:'010.1234.1234','age':'40'});
db.getCollection('member').find()
db.member.insertMany([
{ name : '김시윤',id:'shyun',tel:'010.4321.4321',age:3},
{ name : '민지',id:'ming',tel:'010.4142.1241',age:18},
{ name : '하니',id:'hani',tel:'010.3636.3666',age:14},
{ name : '다니엘',id:'daniel',tel:'010.1141.1424',age:17},
{ name : '헤린',id:'ryn',tel:'010.7475.7421',age:16},
{ name : '혜인',id:'heng',tel:'010.4112.6345',age:18}
]);
db.createCollection('user');
db.user.insert([
    {_id:1,name:'뉴진스',id:'newjeans',pwd:'12345'},
    {_id:2,name:'나은',id:'naeun',pwd:'12345'}
]);
db.user.find();
db.member.find();
db.user.insert({_id:1,name:'카레리',id:'youth',pwd:'12345'});
db.user.insert([
{_id:1,name:'카레리',id:'carrel',pwd:'12345'},
{_id:3,name:'유스',id:'youth',pwd:'12345'}
]);

db.user.insert([
{_id:3,name:'유스',id:'youth',pwd:'12345'},
{_id:1,name:'카레리',id:'carrel',pwd:'12345'}
]);//중복된 부분부터 추가 안됨
db.uesr.insertMany([
{_id:3,name:'유스',id:'youth',pwd:'12345'}, 
{_id:6,name:'잠탱',id:'dewey',pwd:'12345'}
], {'ordered':false});
db.user.find();

use user;
use boardDB;
freboard_res=db.board.insertOne{name:'자유게시판'};
show collections;
use boardDB;
db.createCollection('board');
freeboard=db.board.insertOne({name:"board"});
show collections;
db.board.find();
//_id 구하기
freeboard_id = freeboard.insertedId;
db.createCollection('news');
show collections;
db.news.insertMany([
    {b_id:freeboard_id,title:'첫글',content:'hello buddy?',writer:'kim'},
    {b_id:freeboard_id,title:'second',content:'it is high time that go outdoor',writer:'choi'},
    {b_id:freeboard_id,title:'이노래 알면 연식이.....',content:'I~love you 사랑한다는 그말밖엔 할 말이 없네요',writer:'dewey'}
]);
db.news.find();
board_notice=db.board.insertOne({name:'notice'});
notice_id=board_notice.insertedId;
db.createCollection('notice');
db.notice.insertMany([
    {b_id:notice_id,title:'첫공지',content:'DO NOTHING',writer:'admin'},
    {b_id:notice_id,title:'두번째 공지',content:'Keep calm in a peaceful mind',writer:'admin'},
    {b_id:notice_id,title:'세번째 공지',content:'Breathe Deeply',writer:'admin'},    
    {b_id:notice_id,title:'네번째 공지',content:'Close your eyes and feel free',writer:'admin'},   
    {b_id:notice_id,title:'다섯번째 공지',content:'Keep your mind peaceful',writer:'admin'}
])
db.notice.find();