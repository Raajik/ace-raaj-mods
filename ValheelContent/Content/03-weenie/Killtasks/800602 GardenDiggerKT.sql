DELETE FROM quest WHERE name = 'GardenDiggerKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300400', 'GardenDiggerKT', '0', '10', 'kill counter');

DELETE FROM quest WHERE name = 'GardenDiggerKTCompleted';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300401', 'GardenDiggerKTCompleted', '0', '1', 'quest timer');