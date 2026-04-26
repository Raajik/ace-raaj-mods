DELETE FROM quest WHERE name = 'marshlandKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300645', 'marshlandKT', '0', '500', 'kill counter');

DELETE FROM quest WHERE name = 'marshlandKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300646', 'marshlandKTComplete', '7200', '1', 'quest timer');