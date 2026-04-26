DELETE FROM quest WHERE name = 'ViaKillTask';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300304', 'ViaKillTask', '0', '3', 'kill counter');

DELETE FROM quest WHERE name = 'ViaKillTaskComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300305', 'ViaKillTaskComplete', '0', '1', 'quest timer');