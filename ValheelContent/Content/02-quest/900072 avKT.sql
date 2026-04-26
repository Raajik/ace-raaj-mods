DELETE FROM quest WHERE name = 'avKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300705', 'avKT', '0', '1000', 'kill counter');

DELETE FROM quest WHERE name = 'avKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300706', 'avKTComplete', '72000', '-1', 'quest timer');