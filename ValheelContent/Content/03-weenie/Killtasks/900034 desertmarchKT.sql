DELETE FROM quest WHERE name = 'desertmarchKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300629', 'desertmarchKT', '0', '500', 'kill counter');

DELETE FROM quest WHERE name = 'desertmarchKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300630', 'desertmarchKTComplete', '7200', '-1', 'quest timer');