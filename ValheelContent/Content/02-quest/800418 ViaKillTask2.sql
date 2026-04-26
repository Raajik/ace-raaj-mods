DELETE FROM quest WHERE name = 'ViaKillTask2';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300306', 'ViaKillTask2', '0', '3', 'kill counter');

DELETE FROM quest WHERE name = 'ViaKillTask2Complete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300307', 'ViaKillTask2Complete', '0', '1', 'quest timer');