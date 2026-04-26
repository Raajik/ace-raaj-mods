DELETE FROM quest WHERE name = 'dfernKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300627', 'dfernKT', '0', '500', 'kill counter');

DELETE FROM quest WHERE name = 'dfernKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300628', 'dfernKTComplete', '7200', '-1', 'quest timer');