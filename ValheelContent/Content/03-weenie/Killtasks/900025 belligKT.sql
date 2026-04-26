DELETE FROM quest WHERE name = 'belligKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300610', 'belligKT', '0', '500', 'kill counter');

DELETE FROM quest WHERE name = 'belligKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300611', 'belligKTComplete', '7200', '-1', 'quest timer');