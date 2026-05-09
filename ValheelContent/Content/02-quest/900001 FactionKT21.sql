DELETE FROM quest WHERE name = 'FactionKT21';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300554', 'FactionKT21', '0', '200', 'kill counter');

DELETE FROM quest WHERE name = 'FactionKT21Complete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300555', 'FactionKT21Complete', '21600', '-1', 'quest timer');