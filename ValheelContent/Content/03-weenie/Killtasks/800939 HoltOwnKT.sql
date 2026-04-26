DELETE FROM quest WHERE name = 'HoltOwnKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300340', 'HoltOwnKT', '0', '1', 'kill counter');

DELETE FROM quest WHERE name = 'HoltOwnKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300341', 'HoltOwnKTComplete', '0', '1', 'quest timer');