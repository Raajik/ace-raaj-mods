DELETE FROM quest WHERE name = 'MegaGolemKT2';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300594', 'MegaGolemKT2', '0', '500', 'kill counter');

DELETE FROM quest WHERE name = 'MegaGolemKT2Complete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300595', 'MegaGolemKT2Complete', '7200', '-1', 'quest timer');