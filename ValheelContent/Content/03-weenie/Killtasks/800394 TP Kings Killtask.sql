DELETE FROM quest WHERE name = 'TPKingsKillTask';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300300', 'TPKingsKillTask', '0', '3', 'kill counter');

DELETE FROM quest WHERE name = 'TPKingsKillTaskComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300301', 'TPKingsKillTaskComplete', '259200', '-1', 'quest timer');