DELETE FROM quest WHERE name = 'StingKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300582', 'StingKT', '0', '50', 'kill counter');

DELETE FROM quest WHERE name = 'StingKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300583', 'StingKTComplete', '7200', '-1', 'quest timer');