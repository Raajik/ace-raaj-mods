DELETE FROM quest WHERE name = 'coastalKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300665', 'coastalKT', '0', '500', 'kill counter');

DELETE FROM quest WHERE name = 'coastalKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300666', 'coastalKTComplete', '7200', '1', 'quest timer');