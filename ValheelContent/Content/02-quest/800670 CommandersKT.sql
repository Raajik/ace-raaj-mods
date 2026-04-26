DELETE FROM quest WHERE name = 'CommandersKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300330', 'CommandersKT', '0', '5', 'kill counter');

DELETE FROM quest WHERE name = 'CommandersKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300331', 'CommandersKTComplete', '259200', '-1', 'quest timer');