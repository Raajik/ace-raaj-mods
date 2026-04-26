DELETE FROM quest WHERE name = 'MegaGolemKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300592', 'MegaGolemKT', '0', '500', 'kill counter');

DELETE FROM quest WHERE name = 'MegaGolemKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300593', 'MegaGolemKTComplete', '7200', '-1', 'quest timer');