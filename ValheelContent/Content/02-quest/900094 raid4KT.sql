DELETE FROM quest WHERE name = 'raid4KT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('900105', 'raid4KT', '0', '1', 'kill counter');

DELETE FROM quest WHERE name = 'raid4KTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('900106', 'raid4KTComplete', '0', '1', 'quest timer');