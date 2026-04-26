DELETE FROM quest WHERE name = 'frostKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('900089', 'frostKT', '0', '1000', 'kill counter');

DELETE FROM quest WHERE name = 'frostKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('900090', 'frostKTComplete', '0', '1', 'quest timer');