DELETE FROM quest WHERE name = 'SeerArlen';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('860041', 'SeerArlen', '0', '1', 'kill counter');

DELETE FROM quest WHERE name = 'SeerArlenComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('860042', 'SeerArlenComplete', '144000', '-1', 'quest timer');