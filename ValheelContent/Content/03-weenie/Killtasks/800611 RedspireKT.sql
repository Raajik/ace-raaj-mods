DELETE FROM quest WHERE name = 'RedspireKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300507', 'RedspireKT', '0', '30', 'kill counter');

DELETE FROM quest WHERE name = 'RedspireKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300508', 'RedspireKTComplete', '0', '1', 'quest timer');