DELETE FROM quest WHERE name = 'fractureKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300709', 'fractureKT', '0', '5', 'kill counter');

DELETE FROM quest WHERE name = 'fractureKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300710', 'fractureKTComplete', '72000', '-1', 'quest timer');