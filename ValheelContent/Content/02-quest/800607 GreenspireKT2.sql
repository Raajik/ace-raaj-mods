DELETE FROM quest WHERE name = 'GreenspireKT2';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300505', 'GreenspireKT2', '0', '30', 'kill counter');

DELETE FROM quest WHERE name = 'GreenspireKT2Complete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300506', 'GreenspireKT2Complete', '0', '1', 'quest timer');