DELETE FROM quest WHERE name = 'northernKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300681', 'northernKT', '0', '1000', 'kill counter');

DELETE FROM quest WHERE name = 'northernKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300682', 'northernKTComplete', '72000', '-1', 'quest timer');