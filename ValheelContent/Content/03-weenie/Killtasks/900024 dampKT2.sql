DELETE FROM quest WHERE name = 'dampKT2';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300601', 'dampKT2', '0', '500', 'kill counter');

DELETE FROM quest WHERE name = 'dampKT2Complete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300602', 'dampKT2Complete', '7200', '-1', 'quest timer');