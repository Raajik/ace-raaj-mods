DELETE FROM quest WHERE name = 'AscendedSkellyKT2';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300500', 'AscendedSkellyKT2', '0', '200', 'kill counter');

DELETE FROM quest WHERE name = 'AscendedSkellyKT2Complete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300500', 'AscendedSkellyKT2Complete', '21600', '-1', 'quest timer');