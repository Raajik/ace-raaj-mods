DELETE FROM quest WHERE name = 'challsKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('860011', 'challsKT', '0', '500', 'kill counter');

DELETE FROM quest WHERE name = 'challsKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('860012', 'challsKTComplete', '7200', '-1', 'quest timer');