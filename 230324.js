
db.news.insertOne({b_id:secret_id,title:"또 비밀글입니다.",content:"비밀",writer:"noname"})
db.secret.find();

db.news.updateMany( {},{$set:{upvote:0}}
);
db.news.find();
db.secret.find();
db.board.find();
db.board.insertOne({name:'secret'});
secret_id=db.board.find({name:'secret'}).toArray()[0]._id
db.news.updateMany({b_id:secret_id},{$inc:{upvote:1}});
db.news.find();
db.board.find();
db.board.insertOne({name:"freeboard"});
freeboard_id=db.board.find({name:'freeboard'}).toArray()[0]._id
db.news.insertOne({b_id:freeboard_id,title:"first free",content:"first content",writer:"free",upvote:0});
db.news.updateMany({b_id:freeboard_id},{$inc:{upvote:2}});
//댓글 추가
newfreeboard_id=db.board.find({name:'freeboard'}).toArray()[0].b_id;
db.news.updateMany({b_id:freeboard_id,writer:'kim'},{$push:{comment:{writer:'취생몽사',content:'속쓰려'}}});
db.news.find();
//댓글에 필드추가 초기값0
db.news.updateMany({b_id:freeboard_id,writer:'kim'},{$set:{"comment.$[commentElem].upvode":0}},{arrayFilters:[{"commentElem.writer":'취생몽사'}]})
use mydb2
db.member.find();
db.member.deleteMany({name:/잠탱/})
db.member.deleteMany({age:{$gte:25}})
db.member.deleteMany({
})
use boardDB
show collections;
db.news.deleteMany({})
db.board.drop();
db.dropDatabase();
db
use boardDB
use myDB2
show databases
show databases
use mydb2
db.dropDatabase(
)
show dbs
use multicampus
db.dropDatabase()
