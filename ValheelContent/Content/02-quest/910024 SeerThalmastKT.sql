DELETE FROM quest WHERE name = 'SeerThalmast';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('860047', 'SeerThalmast', '0', '1', 'kill counter');

DELETE FROM quest WHERE name = 'SeerThalmastComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('860048', 'SeerThalmastComplete', '144000', '-1', 'quest timer');