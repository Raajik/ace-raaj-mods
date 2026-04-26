DELETE FROM quest WHERE name = 'dmagKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300620', 'dmagKT', '0', '500', 'kill counter');

DELETE FROM quest WHERE name = 'dmagKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300621', 'dmagKTComplete', '7200', '-1', 'quest timer');