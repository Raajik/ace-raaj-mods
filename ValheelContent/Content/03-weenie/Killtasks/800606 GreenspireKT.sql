DELETE FROM quest WHERE name = 'GreenspireKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300503', 'GreenspireKT', '0', '20', 'kill counter');

DELETE FROM quest WHERE name = 'GreenspireKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300504', 'GreenspireKTComplete', '72000', '-1', 'quest timer');