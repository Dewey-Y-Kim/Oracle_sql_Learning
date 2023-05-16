select * from user_constraints;
alter table goodinfo drop constraint FK_SELLERINFO_TO_GOODINFO;
alter table goodInfo add foreign key (sellercode) references sellerInfo (sellercode) on delete cascade;
select * from goodinfo;
