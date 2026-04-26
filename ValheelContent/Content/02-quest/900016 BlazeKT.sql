DELETE FROM quest WHERE name = 'BlazeKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300584', 'BlazeKT', '0', '50', 'kill counter');

DELETE FROM quest WHERE name = 'BlazeKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300585', 'BlazeKTComplete', '7200', '-1', 'quest timer');