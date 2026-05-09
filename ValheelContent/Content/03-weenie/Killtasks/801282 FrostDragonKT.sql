DELETE FROM quest WHERE name = 'FactionKT3';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300544', 'FactionKT3', '0', '50', 'kill counter');

DELETE FROM quest WHERE name = 'FactionKT3Complete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300545', 'FactionKT3Complete', '0', '1', 'quest timer');