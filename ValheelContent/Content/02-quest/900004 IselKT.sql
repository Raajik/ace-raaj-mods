DELETE FROM quest WHERE name = 'IselKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300560', 'IselKT', '0', '1', 'kill counter');

DELETE FROM quest WHERE name = 'IselKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300561', 'IselKTComplete', '3600', '-1', 'quest timer');