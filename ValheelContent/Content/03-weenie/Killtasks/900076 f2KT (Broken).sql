DELETE FROM quest WHERE name = 'f2KT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300712', 'f2KT', '0', '1500', 'kill counter');

DELETE FROM quest WHERE name = 'f2KTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300713', 'f2KTComplete', '72000', '-1', 'quest timer');