DELETE FROM quest WHERE name = 'vcentralKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300677', 'vcentralKT', '0', '500', 'kill counter');

DELETE FROM quest WHERE name = 'vcentralKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300678', 'vcentralKTComplete', '72000', '-1', 'quest timer');