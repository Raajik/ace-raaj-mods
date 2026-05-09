DELETE FROM quest WHERE name = 'FactionKT2';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300542', 'FactionKT2', '0', '200', 'kill counter');

DELETE FROM quest WHERE name = 'FactionKT2Complete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300543', 'FactionKT2Complete', '0', '1', 'quest timer');