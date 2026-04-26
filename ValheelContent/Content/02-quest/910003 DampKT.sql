DELETE FROM quest WHERE name = 'dampKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('860005', 'dampKT', '0', '500', 'kill counter');

DELETE FROM quest WHERE name = 'dampKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('860006', 'dampKTComplete', '7200', '-1', 'quest timer');