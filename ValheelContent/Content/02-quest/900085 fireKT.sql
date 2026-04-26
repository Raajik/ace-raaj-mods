DELETE FROM quest WHERE name = 'fireKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('900087', 'fireKT', '0', '1000', 'kill counter');

DELETE FROM quest WHERE name = 'fireKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('900088', 'fireKTComplete', '0', '1', 'quest timer');