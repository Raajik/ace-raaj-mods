DELETE FROM quest WHERE name = 'highlandKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300649', 'highlandKT', '0', '500', 'kill counter');

DELETE FROM quest WHERE name = 'highlandKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300650', 'highlandKTComplete', '7200', '1', 'quest timer');