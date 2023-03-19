show dbs
use mydb
db.createCollection(
    "cappedCollection",
    {
        capped:true,
        size:10000B
    }
);
show
db.cappedColection.stats();
db.cappedCollection.stats();
db.cappedColection.insertOne({data:1});
for(i=100;i<1000;i++){
    db.cappedColection.insertOne({data:i});    
}
db.cappedCollection.find();
db.cappedCollection.find().count();
db.cappedCollection.stats();
db.cappedColection.isCapped();
show collections;
db.collections.drop();
db.createCollection("testCol");
db.testCol.isCapped();
db.testCol.drop();
db.colection.drop();
db.collections;
show collections;
db.cappedColection.drop();
db.createCollection("testDB");
db.testDB.insert();
db.testDB.insert([
    {job:"격투가",age :20},
    {job:"귀검사",age :23},
    {job:"마법사",age :16}
]);
db.testDB.stats();
db.testDB.find();
db.testDB.find().count();
db.testDB.find({job:"마법사"});
db.testDB.find({age:20});
show dbs;
db.testDB.find({'age':{$gt:20}}).pretty()
use mydb2
db.createCollection("articles")
show collections;

db.article.insert({
    "title":"article01",
    "content":"contents01",
    "writer":"Velopert",
    "likes":0,
    "comments":[]
})
db.arcticle.find().count();

db.article.insert({
    "title":"article02",
    "content":"content02",
    "writer":"Alpha",
    "likes":23,
    "comments":[
        {
               "name":"Bravo",
               "message":"Hey Man!"
        }
    ]
})
db.article.insert({
    "title":"article03",
    "content":"content03",
    "writer":"Bravo",
    "likes":40,
    "comments":[
        {
            "name":"Charlie",
            "message":"Hey Man!"
        },
        {
            "name":"Delta",
            "message":"Hey Man!"
        }
    ]
    });
db.article.find().count();
db.articles.drop();
db.arcticle.drop();
db.article.find();
db.article.drop({"comment":[]});
//$gt
db.article.find({title:'article02'});
db.article.find({'likes':{$gt:10,$lt:30}}).pretty();
db.article.find();
db.article.find({'writer':{$in:['Alpha','Bravo']}});
db.article.find({'likes':{$gte:20} });
//논리연산자
db.article.find({$or:[{title:'article01'},{'writer':'Bravo'},{'likes':0}]});
db.article.find();
db.article.find({$and:[{'writer':{$eq:'Velopert'}},{'likes':{$lt:10}}]});
db.article.find({'writer':'Velopert','likes':{$lt:10}});
db.article.find({'writer':{$ne:'Bravo'}});
db.article.find({'title':/article0[1-2]/});
db.article.find({'title':/article0[12]/});
db.article.find({'title':{$regex:/article0[1-2]/}});
db.article.find({title:/ticle/});
db.article.find({content:/nt0/});
db.article.find({writer:/^B/});
db.article.find({writer:/^V/});
db.article.find({writer:/a$/});
