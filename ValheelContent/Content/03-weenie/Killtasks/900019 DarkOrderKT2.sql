DELETE FROM quest WHERE name = 'DarkorderKT2';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300590', 'DarkorderKT2', '0', '1', 'kill counter');

DELETE FROM quest WHERE name = 'DarkorderKT2Complete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300591', 'DarkorderKT2Complete', '3600', '-1', 'quest timer');