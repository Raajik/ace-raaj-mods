DELETE FROM quest WHERE name = 'mountainsewerKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300616', 'mountainsewerKT', '0', '500', 'kill counter');

DELETE FROM quest WHERE name = 'mountainsewerKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300617', 'mountainsewerKTComplete', '7200', '-1', 'quest timer');