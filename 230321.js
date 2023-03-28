use multicampus;
db.createCollection('inventory');

db.inventory.insertMany([
{ item: "journal", qty: 25, size: { h: 14, w: 21, uom: "cm" }, status: "A" },
{ item: "notebook", qty: 50, size: { h: 8.5, w: 11, uom: "in" }, status: "A" },
{ item: "paper", qty: 100, size: { h: 8.5, w: 11, uom: "in" }, status: "D" },
{ item: "planner", qty: 75, size: { h: 22.85, w: 30, uom: "cm" }, status: "D" },
{ item: "postcard", qty: 45, size: { h: 10, w: 15.25, uom: "cm" }, status: "A" }
]);
db.inventory.find();
db.inventory.find({size:{h:14,w:21,uom:'cm'}});
db.inventory.find({size:{uom:{$eq:'cm'}}});
db.inventory.find({'size.h':{$lt:10}});
db.inventory.find({'size.uom':{$eq:'cm'}});
db.inventory.find({'size.w':{$gte:15},status:'A'})
db.inventory.find( {$and:[ {'size.w':{$gte:15}} , {status:{$eq:'A'}} ]});
db.inventory.find({'size.h':{$lt:10},status:'A'});
db.inventory.find( {$and:[{'size.h':{$lt:10}},{status:'A'}]});
db.inventory.insertMany([
{ item: "journal", qty: 25, tags: ["blank", "red"], dim_cm: [ 14, 21 ] },
{ item: "notebook", qty: 50, tags: ["red", "blank"], dim_cm: [ 14, 21 ] },
{ item: "paper", qty: 100, tags: ["red", "blank", "plain"], dim_cm: [ 14, 21 ] },
{ item: "planner", qty: 75, tags: ["blank", "red"], dim_cm: [ 22.85, 30 ] },
{ item: "postcard", qty: 45, tags: ["blue"], dim_cm: [ 10, 15.25 ] }
])
db.inventory.find();
db.inventory.find({tags:['red','blank']});
db.inventory.find({tags:['blank','red']});

db.inventory.find({tags:{$all:['red','blank']}});//순서무관

db.inventory.find({tags:'red'});
db.inventory.find({dim_cm:{$gte:25}});

db.inventory.find({'dim_cm.0':{$lt:15}});
db.inventory.find({'dim_cm.1':{$gt:12}});

db.inventory.find({tags:{$size:2}});
db.inventory.find({tags:{$size:1}});