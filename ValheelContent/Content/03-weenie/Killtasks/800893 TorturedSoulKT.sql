DELETE FROM quest WHERE name = 'TorturedSoulKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300336', 'TorturedSoulKT', '0', '10', 'kill counter');

DELETE FROM quest WHERE name = 'TorturedSoulKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300337', 'TorturedSoulKTComplete', '7200', '-1', 'quest timer');