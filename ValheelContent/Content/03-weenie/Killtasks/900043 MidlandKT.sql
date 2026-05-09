DELETE FROM quest WHERE name = 'midlandKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300647', 'midlandKT', '0', '500', 'kill counter');

DELETE FROM quest WHERE name = 'midlandKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300648', 'midlandKTComplete', '7200', '1', 'quest timer');