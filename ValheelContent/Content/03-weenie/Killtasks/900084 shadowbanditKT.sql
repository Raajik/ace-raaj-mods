DELETE FROM quest WHERE name = 'shadowbanditKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('900085', 'shadowbanditKT', '0', '1000', 'kill counter');

DELETE FROM quest WHERE name = 'shadowbanditKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('900086', 'shadowbanditKTComplete', '0', '1', 'quest timer');