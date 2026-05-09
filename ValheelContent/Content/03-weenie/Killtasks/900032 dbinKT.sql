DELETE FROM quest WHERE name = 'dbinKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300624', 'dbinKT', '0', '500', 'kill counter');

DELETE FROM quest WHERE name = 'dbinKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300625', 'dbinKTComplete', '7200', '-1', 'quest timer');