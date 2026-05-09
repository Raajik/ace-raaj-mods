DELETE FROM quest WHERE name = 'cragKT1';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300707', 'cragKT1', '0', '100', 'kill counter');

DELETE FROM quest WHERE name = 'cragKT1Complete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300708', 'cragKT1Complete', '72000', '-1', 'quest timer');