DELETE FROM quest WHERE name = 'TorturedEssenceKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300334', 'TorturedEssenceKT', '0', '10', 'kill counter');

DELETE FROM quest WHERE name = 'TorturedEssenceKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300335', 'TorturedEssenceKTComplete', '7200', '-1', 'quest timer');