DELETE FROM quest WHERE name = 'coloKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('900095', 'coloKT', '0', '1', 'kill counter');

DELETE FROM quest WHERE name = 'coloKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('900096', 'coloKTComplete', '0', '1', 'quest timer');