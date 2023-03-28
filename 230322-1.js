function getCurrentDate(){
    var date = new Date();
    var year = date.getFullYear();
    var month = date.getMonth();
    var today = date.getDate();
    var hours = date.getHours();
    var minutes = date.getMinutes();
    var seconds = date.getSeconds();
    var milliseconds = date.getMilliseconds();
    return new Date(Date.UTC(year, month, today, hours, minutes, seconds, milliseconds));
}
db.datecoll.insertOne({ name: 'first', createdAt: new Date() });
db.datecoll.insertOne({ name: 'second',  createdAt: getCurrentDate() });
db.datecoll.find();
