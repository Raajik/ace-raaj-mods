DELETE FROM quest WHERE name = 'raid3KT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('900103', 'raid3KT', '0', '1', 'kill counter');

DELETE FROM quest WHERE name = 'raid3KTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('900104', 'raid3KTComplete', '0', '1', 'quest timer');