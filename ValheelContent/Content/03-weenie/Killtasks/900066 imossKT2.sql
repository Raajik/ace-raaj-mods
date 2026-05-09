DELETE FROM quest WHERE name = 'imossKT2';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300693', 'imossKT2', '0', '1000', 'kill counter');

DELETE FROM quest WHERE name = 'imossKT2Complete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300694', 'imossKT2Complete', '72000', '-1', 'quest timer');