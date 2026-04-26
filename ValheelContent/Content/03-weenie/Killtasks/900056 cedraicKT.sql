DELETE FROM quest WHERE name = 'cedraicKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300673', 'cedraicKT', '0', '1', 'kill counter');

DELETE FROM quest WHERE name = 'cedraicKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300674', 'cedraicKTComplete', '72000', '-1', 'quest timer');