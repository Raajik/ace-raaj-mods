DELETE FROM quest WHERE name = 'FrSnowmanKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('860037', 'FrSnowmanKT', '0', '100', 'kill counter');

DELETE FROM quest WHERE name = 'FrSnowmanKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('860038', 'FrSnowmanKTComplete', '7200', '-1', 'quest timer');