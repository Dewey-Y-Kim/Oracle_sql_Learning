use multicampus;
db.createCollection("employee",{capped:true,size:100000});
show collections;
db.employee.insertOne({
    'empno':7369,
    'name':'SMITH',
    'sal':800,
    'depno':20,
    'job':'CLERK'
});
db.employee.insertOne({
    'empno':7499,
    'name':'WARD',
    'sal':1600,
    'depno':30,
    'job':'SALESMAN',
    'comm':300
});   
db.employee.find();
db.employee.insertMany([
    {'empno':7566,'name':'JONES', 'sal': 2975, 'depno':20, 'job':'MANAGER'},
    {'empno':7654,'name': 'MARTIN','sal':1250,'depno': 30, 'job':'SALESMAN','comm':800},
    {'empno':7782,'name': 'CLARK','sal':2450,'depno': 10, 'job':'MANAGER'},
    {'empno':7934,'name': 'MILLER','sal':1300, 'depno': 10, 'job':'CLERK'}
]);