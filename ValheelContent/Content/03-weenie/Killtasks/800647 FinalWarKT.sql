DELETE FROM quest WHERE name = 'finalwarKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300517', 'finalwarKT', '0', '5', 'kill counter');

DELETE FROM quest WHERE name = 'finalwarKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300518', 'finalwarKTComplete', '0', '1', 'quest timer');