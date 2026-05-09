DELETE FROM quest WHERE name = 'raid2KT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('900101', 'raid2KT', '0', '1', 'kill counter');

DELETE FROM quest WHERE name = 'raid2KTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('900102', 'raid2KTComplete', '0', '1', 'quest timer');