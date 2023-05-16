--ALTER TABLE [FK를 생성시킬 테이블명]
--ADD CONSTRAINT [FK명] foreign KEY(FK가 될 컬럼명) references [PK가 위치하는 테이블] ([PK컬럼명]);

alter table sellInfo  add constraint fk_sellInfo_to_customInfo foreign KEY(customNo) references customInfo(customNo);
select * from user_constraints;

alter table sellInfo add constraint fk_sellInfo_to_goodInfo foreign Key(goodNo) references goodInfo(goodNo);

ALTER TABLE  DROP CONSTRAINT fk_sellInfo_to_customInfo;
ALTER TABLE PLAYER ADD FOREIGN KEY (team_id) REFERENCES TEAM (id) ON UPDATE CASCADE;
select * from user_constraints where table_name=upper('sellInfo');
alter table sellInfo drop constraint FK_SELLINFO_TO_GOODINFO;

select * from user_constraints where table_name=upper('goodInfo');

commit;
alter table brokenList add constraint fk_brokenList_to_goodInfo foreign Key(goodNo) references goodInfo(goodNo)  ON delete CASCADE;
alter table brokenList drop constraint fk_brokenList_to_goodInfo ;
alter table refundList add constraint fk_refund_to_goodInfo foreign Key(goodNo) references goodInfo(goodNo)  ON delete CASCADE;
commit;
select * from sellInfo;
select to_char(sysdate,'YYYY-MM-DD HH:mi:ss') from dual;