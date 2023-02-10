select * from tab;
show user;

-- user 생성

--create user [username] identified by [password];
create user test identified by 1234;
grant create session to test; --접속권한 부여
-- grant [권한] to [Id];

conn [ID]/[passwd];
select * from role_sys_privs where role='RESOURCE';
select * from role_sys_privs Order by privilege;
