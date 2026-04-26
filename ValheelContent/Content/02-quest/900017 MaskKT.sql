DELETE FROM quest WHERE name = 'MaskKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300586', 'MaskKT', '0', '500', 'kill counter');

DELETE FROM quest WHERE name = 'MaskKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300587', 'MaskKTComplete', '7200', '-1', 'quest timer');