DELETE FROM quest WHERE name = 'desertmineKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300614', 'desertmineKT', '0', '500', 'kill counter');

DELETE FROM quest WHERE name = 'desertmineKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300615', 'desertmineKTComplete', '7200', '-1', 'quest timer');