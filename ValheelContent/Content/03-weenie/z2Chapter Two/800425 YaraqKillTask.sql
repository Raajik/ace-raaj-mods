DELETE FROM quest WHERE name = 'YaraqKillTask';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300310', 'YaraqKillTask', '0', '50', 'kill counter');

DELETE FROM quest WHERE name = 'ViaKillTask2Complete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300311', 'YaraqKillTask', '72000', '-1', 'quest timer');