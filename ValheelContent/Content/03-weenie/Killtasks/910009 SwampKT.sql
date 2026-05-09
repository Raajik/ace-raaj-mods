DELETE FROM quest WHERE name = 'swampKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('860017', 'swampKT', '0', '500', 'kill counter');

DELETE FROM quest WHERE name = 'swampKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('860018', 'swampKTComplete', '7200', '-1', 'quest timer');