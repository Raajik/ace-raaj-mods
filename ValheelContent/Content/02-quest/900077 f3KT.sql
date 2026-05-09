DELETE FROM quest WHERE name = 'f3KT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300714', 'f3KT', '0', '1500', 'kill counter');

DELETE FROM quest WHERE name = 'f3KTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300715', 'f3KTComplete', '72000', '-1', 'quest timer');