DELETE FROM quest WHERE name = 'AscSkellyKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300400', 'AscSkellyKT', '0', '200', 'kill counter');

DELETE FROM quest WHERE name = 'AscSkellyKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300401', 'AscSkellyKTComplete', '21600', '-1', 'quest timer');