alter table footprints add index (user_id, owner_id, created_at);
alter table relations add index (another);
