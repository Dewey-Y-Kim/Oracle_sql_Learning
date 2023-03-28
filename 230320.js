use mydb2;
db.member.find();
db.member.find({},{name:true, tel:1});
db.member.find({},{_id:0,name:1, tel:true});
db.member.insertMany([
    {name:'잠탱군',id:'Jams4',tel:'010.1234.1234',age:24},
    {name:'잠탱군1',id:'Jams5',tel:'010.1234.1234',age:46},
    {name:'잠탱군2',id:'Jams6',tel:'010.134.1234',age:26},
    {name:'잠탱군3',id:'Jams7',tel:'010.1534.1234',age:126}
])
db.member.find({age:{$gt:30}},{_id:0,name:1,tel:1})
db.member.find({id:/a/,age:{$gt:30}});
db.member.find()
db.member.find({$or:[{age:{$lt:20}},{id:/a/}]})

db.member.find({age:{$lte:22}}).sort({age:1});
db.member.find({age:{$lte:22}}).sort({age:-1});
db.member.find()

db.member.find().sort({age:-1}).limit(4);
db.member.find().sort({age:1}).limit(5);
db.member.find().sort({age:-1})
db.member.find().sort({age:-1}).skip(3).limit(4);
db.member.find().sort({age:-1,name:1});
use multicampus
db.employee.find();
db.employee.find({},{empno:1,name:1,depno:1,sal:1}).sort({depno:1,sal:-1});
db.employee.find({$or:[{depno:10},{depno:20}]},{name:1,depno:1,job:1}).sort({name:1});
db.employee.find({depno:{$in:[10,20]}},{name:1,depno:1,job:1}).sort({name:1});
/*
userid shin인 document의 name,id,tel검색
age :25세 초과하는 회원 이름 나이 검색
age : 25이거나 이름이 이순신인 회원의 모든 정보 가져오기
employee에서 사원 이름과급여 선택
employee에서 담당 업무 manager 사번 이름 업무 검색
*/
use mydb2
db.member.find();
db.member.find({id:'shyun'},{name:1,id:1,tel:1});
db.member.find({age:{$gt:25}},{name:1, age:1})
db.member.find({$or:[{age:{$gt:26}},{name:'잠탱씨'}]});
use multicampus;
db.employee.find();
db.employee.find({},{name:1,sal:1});
db.employee.find({job:"MANAGER"},{empno:1,name:1,job:1});
db.employee.find({job:"MANAGER"},{empno:1,name:1,job:1,depno:1}).sort(depno,-1);
db.employee.find({sal:{$gte:2000}},{empno:1,name:1,job:1,sal:1});
db.employee.find({$and:[{sal:{$lte:2500}},{sal:{$gte:1300}}]}, {name:1,job:1,depno:1}).sort({sal:1});
db.employee.find({$and:[{sal:{$gte:1300}},{sal:{$lte:2500}}]},{name:1,sal:1,job:1}).sort({sal:1});
db.employee.find({empno:{$in:[7369,7654,7934]}},{empno:1,name:1,job:1,sal:1});
db.employee.find();
db.employee.find({depno:20},{name:1,job:1,depno:1});
db.employee.find({depno: {$ne:20} },{name:1,job:1,depno:1});
db.employee.find({$or:[{job:'CLERK'},{job:'MANAGER'}]})
db.employee.find({job:{$in:['CLERK','MANAGER']}});
db.employee.find({job:{$nin:['CLERK','MANAGER']}});
db.employee.find({$nor:[{job:'CLERK'},{job:'MANAGER'}]})
db.employee.find({$nor:[{job:'CLERK'},{job:'MANAGER'}]}).count();
db.employee.find().count();
db.employee.find().count();
use multicampus
db.createCollection('test')
db.test.insertMany([
{ a: 5, b: 5, c: null },
{ a: 3, b: null, c: 8 },
{ a: null, b: 3, c: 9 },
{ a: 1, b: 2, c: 3 },
{ a: 2, c: 5 },
{ a: 3, b: 2 },
{ a: 4 }
])
db.test.find();
db.test.find({b:{$exists:true}}).count();
db.test.find({b:{$exists:false}}).count();
use mydb2
db.member.distinct('name');

use multicampus;
db.employee.find();
db.employee.find({depno:30});
db.employee.find({comm:{$ne:null}});
db.employee.find({job:"SALESMAN"},{comm:{$gte:100}}).count();
db.employee.distinct("depno");
db.employee.distinct("job");