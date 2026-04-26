DELETE FROM quest WHERE name = 'AscendedSkellyKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300540', 'AscendedSkellyKT', '0', '200', 'kill counter');

DELETE FROM quest WHERE name = 'AscendedSkellyKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300541', 'AscendedSkellyKTComplete', '0', '1', 'quest timer');