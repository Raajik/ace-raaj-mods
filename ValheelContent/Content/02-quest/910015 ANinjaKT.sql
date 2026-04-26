DELETE FROM quest WHERE name = 'ANinjaKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('860029', 'ANinjaKT', '0', '1000', 'kill counter');

DELETE FROM quest WHERE name = 'ANinjaKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('860030', 'ANinjaKTComplete', '72000', '-1', 'quest timer');