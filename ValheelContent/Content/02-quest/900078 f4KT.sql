DELETE FROM quest WHERE name = 'f4KT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300716', 'f4KT', '0', '1500', 'kill counter');

DELETE FROM quest WHERE name = 'f4KTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300717', 'f4KTComplete', '72000', '-1', 'quest timer');