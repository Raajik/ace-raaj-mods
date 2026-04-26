DELETE FROM quest WHERE name = 'raid1KT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('900099', 'raid1KT', '0', '1', 'kill counter');

DELETE FROM quest WHERE name = 'raid1KTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('900100', 'raid1KTComplete', '0', '1', 'quest timer');