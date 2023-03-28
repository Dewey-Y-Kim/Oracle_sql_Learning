use multicampus
db.inventory.find();
db.inventory.updateMany({item:'planner'},{$addToSet:{tags:'pink'}})
db.inventory.updateMany(
{item:'postcard'},
{$push:{tags:{$each:['red','green','lightblue']}}}
)
db.inventory.find();
use boardDB
db.board.find();
db.news.find();
board_id= db.board.find({name:'board'}).toArray()[0]._id
db.news.insertMany([
{b_id:board_id,title:'Too lazy to die',content:'Plz God',writer:'sleep'},
{b_id:board_id,title:'지루해',content:'의욕없네',writer:'kim'},
{b_id:board_id,title:'피곤해',content:'정신이 지쳤어',writer:'lee'}
])

db.createCollection('secret')
db.secret.insertOne({title:'자고시포요',writer:'noname'})