DELETE FROM quest WHERE name = 'SeerGralstrat';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('860045', 'SeerGralstrat', '0', '1', 'kill counter');

DELETE FROM quest WHERE name = 'SeerGralstratComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('860046', 'SeerGralstratComplete', '144000', '-1', 'quest timer');