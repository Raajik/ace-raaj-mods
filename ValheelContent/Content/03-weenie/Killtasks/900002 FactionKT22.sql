DELETE FROM quest WHERE name = 'FactionKT22';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300556', 'FactionKT22', '0', '50', 'kill counter');

DELETE FROM quest WHERE name = 'FactionKT22Complete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300557', 'FactionKT22Complete', '21600', '-1', 'quest timer');