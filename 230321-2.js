use multicampus
db.createCollection('user');
db.user.insertMany([
    {_id:1,name:'hong',userid:'kil',pwd:'1234'},
    {_id:2,name:'kang',userid:'chan',pwd:'2345'},
    {_id:3,name:'ann',userid:'jung',pwd:'4567'},
    {_id:4,name:'lee',userid:'sun',pwd:'5678'},
    {_id:5,name:'seo',userid:'jong',pwd:'6789'},
    {_id:6,name:'kam',userid:'kang',pwd:'7890'},                
])
db.user.find();
// db.user.replaceOne({조건},{변경사항},{upsert:true}) upsert: 기존데이터가 없으면 추가
db.user.replaceOne({userid:'kil'},{name:"홍길동",userid:'killdong',pwd:'9999'},{upsert:true});
db.user.replaceOne({userid:'Kil'},{name:"정미경",userid:'kyong',pwd:'8888'},{upsert:true});
use mydb2
db.member.find();
db.member.updateMany({tel:/123/},
    {$set:{grade:'A'}})
db.member.updateMany({grade:{$exists:false}},{$set:{grade:'B'}})
db.member.updateMany(
{$or:[{id:/s/},{tel:/4/}]},
{$set:{age:24}}
);
db.member.find();
db.member.updateMany({name:/^카/},{$set:{grade:'C'}})
db.member.updateOne({name:/^잠/},{$set:{grade:'D'}});
//$inc
db.member.updateMany({tel:/1234$/},{$inc:{grade:+1}});

db.member.updateMany({$and:[{age:{$lte:24}},{age:{$gte:18}}]},{$set:{grade:'B'},$inc:{age:-1}})
db.member.updateMany({name:/잠탱/},{$inc:{age:-1}})
db.member.find();
db.member.updateMany({age:{$lt:20}},{$inc:{age:1}})
db.member.updateMany({id:'hani'},{$mul:{age:2}});
db.member.updateMany({},{$min:{age:24}});
db.member.updateMany(
{$and:[{age:{$gt:20}},{age:{$lt:23}}]} ,{$min:{age:22}})
db.member.find();
db.member.updateMany(
{grade:'A'},
{$min:{age:20}}
);
db.member.updateMany({},{$max:{age:21}})
db.member.find();
db.member.updateMany(
{},
{$rename:{'tel':'Phone'}}
)
db.member.updateMany({grade:'A'},{$currentDate:{indate:true}});
db.member.updateMany({},{$currentDate:{indate:true}});
db.member.updateMany({grade:'A'},{$unset:{indate:true}});
db.member.updateMany({},{$unset:{indate:true}})
db.member.find();

db.member.updateMany({$or:[{name:/3$/},{grade:'C'}]},{$inc:{age:-3}})
db.member.find();
db.member.updateMany({Phone:/5/} , {$set: {grade : 'F'}})

db.member.find();
db.member.updateMany({id:/g$/},{$inc:{age:3},$set:{grade:'A'}});
db.member.find();
db.member.updateMany({age:{$gte:24}},{$set:{age:26,grade:'B'}});
db.member.updateMany({age:{$gte:26}},{$min:{age:30},$set:{grade:'B'}});
db.member.updateMany({$or:[{name:'잠탱군'},{id:/an/}]},{$set:{age:21},$set:{grade:'D'}})
db.member.updateMany({$or:[{name:'잠탱군'},{id:/an/}]},{$set:{age:21,grade:'D'}})
db.member.find();
use multicampus
db.inventory.find();
db.inventory.insertOne({
    item:'pencil',
    qty:45,
    tags:['blank'],
    dim_cm:[10,15.25]
});
db.inventory.updateMany(
    {item:'pencil',tags:{$exists:true}},
    {$set:{'tags.$[tagsfilter]':'red'}},
    {arrayFilters:[{tagsfilter:'blank'}]}
)
db.inventory.updateMany(
    {item:/^p/,tags:{$exists:true}},
    {$set:{'tags.$[tagname]':'orange'}},
    {arrayFilters:[{tagname:'red'}]},
)
db.inventory.find();