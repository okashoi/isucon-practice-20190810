alter table footprints add index (user_id, owner_id, created_at);
ALTER TABLE comments ADD INDEX (user_id);
