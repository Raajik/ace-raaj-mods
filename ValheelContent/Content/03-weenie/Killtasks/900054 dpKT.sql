DELETE FROM quest WHERE name = 'dpKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300669', 'dpKT', '0', '1', 'kill counter');

DELETE FROM quest WHERE name = 'dpKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300670', 'dpKTComplete', '0', '1', 'quest timer');