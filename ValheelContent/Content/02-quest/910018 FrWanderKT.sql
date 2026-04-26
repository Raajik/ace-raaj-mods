DELETE FROM quest WHERE name = 'FrWanderKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('860035', 'FrWanderKT', '0', '50', 'kill counter');

DELETE FROM quest WHERE name = 'FrWanderKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('860036', 'FrWanderKTComplete', '7200', '-1', 'quest timer');