DELETE FROM quest WHERE name = 'ssKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300661', 'ssKT', '0', '500', 'kill counter');

DELETE FROM quest WHERE name = 'ssKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300662', 'ssKTComplete', '7200', '-1', 'quest timer');