DELETE FROM quest WHERE name = 'FactionKT20';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300552', 'FactionKT20', '0', '200', 'kill counter');

DELETE FROM quest WHERE name = 'FactionKT20Complete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300553', 'FactionKT20Complete', '21600', '-1', 'quest timer');