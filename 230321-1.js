db.getCollection("member").find({})
db.member.find().count();
var myCs=db.member.find();
while(myCs.hasNext()){
    printjson(myCs.next());
};

var myCs=db.member.find({$or:[{id:/m/},{age:{$lte:17}}]});
while(myCs.hasNext()){
    printjson(myCs.next());
};
var myCs=db.member.find({$or:[{tel:/5/},{age:/^2/}]});
myCs.forEach(printjson)
db.member.find();
