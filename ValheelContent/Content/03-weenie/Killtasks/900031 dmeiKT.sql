DELETE FROM quest WHERE name = 'dmeiKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300622', 'dmeiKT', '0', '500', 'kill counter');

DELETE FROM quest WHERE name = 'dmeiKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300623', 'dmeiKTComplete', '7200', '-1', 'quest timer');