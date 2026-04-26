DELETE FROM quest WHERE name = 'doKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300663', 'doKT', '0', '500', 'kill counter');

DELETE FROM quest WHERE name = 'doKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300664', 'doKTComplete', '7200', '-1', 'quest timer');