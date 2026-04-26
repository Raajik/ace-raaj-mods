DELETE FROM quest WHERE name = 'staticKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('900093', 'staticKT', '0', '1000', 'kill counter');

DELETE FROM quest WHERE name = 'staticKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('900094', 'staticKTComplete', '0', '1', 'quest timer');