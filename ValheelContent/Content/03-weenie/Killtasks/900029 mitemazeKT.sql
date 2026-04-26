DELETE FROM quest WHERE name = 'mitemazeKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300618', 'mitemazeKT', '0', '500', 'kill counter');

DELETE FROM quest WHERE name = 'mitemazeKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300619', 'mitemazeKTComplete', '7200', '-1', 'quest timer');