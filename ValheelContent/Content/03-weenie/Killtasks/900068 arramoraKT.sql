DELETE FROM quest WHERE name = 'arramoraKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300697', 'arramoraKT', '0', '1000', 'kill counter');

DELETE FROM quest WHERE name = 'arramoraKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300698', 'arramoraKTComplete', '72000', '-1', 'quest timer');