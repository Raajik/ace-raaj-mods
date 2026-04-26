DELETE FROM quest WHERE name = 'imossKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300687', 'imossKT', '0', '1000', 'kill counter');

DELETE FROM quest WHERE name = 'imossKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300688', 'imossKTComplete', '72000', '-1', 'quest timer');