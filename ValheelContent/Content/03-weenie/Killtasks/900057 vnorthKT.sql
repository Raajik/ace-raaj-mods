DELETE FROM quest WHERE name = 'vnorthKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300675', 'vnorthKT', '0', '500', 'kill counter');

DELETE FROM quest WHERE name = 'vnorthKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300676', 'vnorthKTComplete', '72000', '-1', 'quest timer');