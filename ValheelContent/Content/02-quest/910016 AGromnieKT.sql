DELETE FROM quest WHERE name = 'AGromnieKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('860031', 'AGromnieKT', '0', '50', 'kill counter');

DELETE FROM quest WHERE name = 'AGromnieKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('860032', 'AGromnieKTComplete', '7200', '-1', 'quest timer');