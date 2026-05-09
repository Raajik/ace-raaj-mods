DELETE FROM quest WHERE name = 'MaskKT2';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300588', 'MaskKT2', '0', '500', 'kill counter');

DELETE FROM quest WHERE name = 'MaskKT2Complete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300589', 'MaskKT2Complete', '7200', '-1', 'quest timer');