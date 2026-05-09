DELETE FROM quest WHERE name = 'FactionKT23';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300558', 'FactionKT23', '0', '100', 'kill counter');

DELETE FROM quest WHERE name = 'FactionKT23Complete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300559', 'FactionKT23Complete', '21600', '-1', 'quest timer');