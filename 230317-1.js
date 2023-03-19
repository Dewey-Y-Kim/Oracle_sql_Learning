use mydb2
show collections;
db.article.find({$where:"this.comments.length==0"});
db.article.find({$where:"this.writer.length>=5"});
db.article.find({$where:"this.comments.length>1"});
db.article.find({$where:"this.likes>30"});

db.article.find();
db.article.find({comments:{$elemMatch:{name:'Charlie'}}});
