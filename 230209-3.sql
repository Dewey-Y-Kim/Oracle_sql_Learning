create user sam_id identified by 1234;
select username, account_status from dba_users;

--계정 잠금 해제 : 관리자권한, lock
alter user sam_id account lock;
-- connect sam_id/1234
-- 접속시
-- ERROR:
-- ORA-28000: the account is locked


-- Warning: You are no longer connected to ORACLE.
alter user sam_id account unlock;
grant connect, resource to sam_id;
--expired : 비밀번호 부여하면 갱신
alter user sam_id identified by 2345;
drop user sam_id cascade;
-- 오류 보고 -
-- ORA-01940: cannot drop a user that is currently connected
-- 01940. 00000 -  "cannot drop a user that is currently connected"
-- *Cause:    Attempt was made to drop a user that is currently logged in.

-- *Action:   Make sure user is logged off, then repeat command.


connect sc