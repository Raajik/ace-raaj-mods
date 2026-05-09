DELETE FROM quest WHERE name = 'tummiehillKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300643', 'tummiehillKT', '0', '500', 'kill counter');

DELETE FROM quest WHERE name = 'tummiehillKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300644', 'tummiehillKTComplete', '7200', '1', 'quest timer');