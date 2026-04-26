DELETE FROM quest WHERE name = 'GardenDiggerKT2';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300651', 'GardenDiggerKT2', '0', '10', 'kill counter');

DELETE FROM quest WHERE name = 'GardenDiggerKT2Completed';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300652', 'GardenDiggerKT2Completed', '0', '1', 'quest timer');