DELETE FROM quest WHERE name = 'MegaRatKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300596', 'MegaRatKT', '0', '500', 'kill counter');

DELETE FROM quest WHERE name = 'MegaRatKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300597', 'MegaRatKTComplete', '7200', '-1', 'quest timer');