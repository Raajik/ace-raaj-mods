DELETE FROM quest WHERE name = 't3KT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('860013', 't3KT', '0', '500', 'kill counter');

DELETE FROM quest WHERE name = 't3KTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('860014', 't3KTComplete', '7200', '-1', 'quest timer');