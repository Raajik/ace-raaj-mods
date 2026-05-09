DELETE FROM quest WHERE name = 'shemtarsKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300515', 'shemtarsKT', '0', '100', 'kill counter');

DELETE FROM quest WHERE name = 'shemtarsKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300516', 'shemtarsKTComplete', '0', '1', 'quest timer');