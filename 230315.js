// DB 생성 or 선택
use mydb
DB
db //DB 확
use admin
db
show dbs //서버 db목록확인
db.stats()//db 상태확인
use mydb
db.stats()
db.dropDatabase() //선택된 db지움
db
//coloections :document 그룹
//db.createCollection(name,option)
db.createCollection("platform",{
    capped:true,
    size:6142800,
    max:10000
})
db
db.stats()
show collections
db.platform.drop() //collection 삭
db.createCollection("board",{
    capped:true,
    size : 6100000,
    max:10000
})
db.createCollection("notice",{
    capped:true,
    size:5000000,
    max:10000
})
db
show collections
db.board.renameCollection("community") //이름확인
use community
use mydb
db.community.insertOne({
    name:"hong",
    age:25
})
db.stats()
db.community.insertOne({
    name : "choi",
    tel : "010-2312-1234"
})
db.community.insertOne({
    name :"잠탱군",
    tel : "010-2321-3124",
    email:{
        first:"123@gsgs.sg",
        second:"skgj@gmail.com"
    }
})
db
show collections
db.community.insertMany([
    {name:"김도형", age:40, tel:"010.2313.1241"},
    {name:"정다은", age:43, tel:"02-2220-2312"},
    {name:"sweten", age:10, tel:"010.2213.1241"},
    {name:"dowuti",age:23, tel:"219.412959",email:"slgjei@gmais.dks"}
])
db.community.drop(
)
db.dropDatabase(
)
