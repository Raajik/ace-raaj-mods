DELETE FROM quest WHERE name = 'lwKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300724', 'lwKT', '0', '1000', 'kill counter');

DELETE FROM quest WHERE name = 'lwKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300725', 'lwKTComplete', '72000', '-1', 'quest timer');