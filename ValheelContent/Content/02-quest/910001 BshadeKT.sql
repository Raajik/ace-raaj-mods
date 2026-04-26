DELETE FROM quest WHERE name = 'BshadeKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('860001', 'BshadeKT', '0', '500', 'kill counter');

DELETE FROM quest WHERE name = 'BshadeKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('860002', 'BshadeKTComplete', '7200', '-1', 'quest timer');