DELETE FROM quest WHERE name = 'ashcastleKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300511', 'ashcastleKT', '0', '1', 'kill counter');

DELETE FROM quest WHERE name = 'ashcastleKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300512', 'ashcastleKTComplete', '0', '1', 'quest timer');