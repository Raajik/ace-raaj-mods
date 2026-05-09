DELETE FROM quest WHERE name = 'desertruinKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300612', 'desertruinKT', '0', '500', 'kill counter');

DELETE FROM quest WHERE name = 'desertruinKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300613', 'desertruinKTComplete', '7200', '-1', 'quest timer');