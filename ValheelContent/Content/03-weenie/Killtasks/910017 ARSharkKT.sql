DELETE FROM quest WHERE name = 'ARSharkKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('860033', 'ARSharkKT', '0', '1000', 'kill counter');

DELETE FROM quest WHERE name = 'ARSharkKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('860034', 'ARSharkKTComplete', '72000', '-1', 'quest timer');