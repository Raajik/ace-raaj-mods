DELETE FROM quest WHERE name = 'YaraqKillTask2';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300312', 'YaraqKillTask2', '0', '50', 'kill counter');

DELETE FROM quest WHERE name = 'YaraqKillTask2Complete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300313', 'YaraqKillTask2Complete', '0', '1', 'quest timer');