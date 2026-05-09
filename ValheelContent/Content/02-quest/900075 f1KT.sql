DELETE FROM quest WHERE name = 'f1KT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300711', 'f1KT', '0', '1500', 'kill counter');

DELETE FROM quest WHERE name = 'f1KTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300712', 'f1KTComplete', '72000', '-1', 'quest timer');