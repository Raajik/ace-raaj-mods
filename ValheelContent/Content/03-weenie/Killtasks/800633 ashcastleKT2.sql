DELETE FROM quest WHERE name = 'ashcastleKT2';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300513', 'ashcastleKT2', '0', '1', 'kill counter');

DELETE FROM quest WHERE name = 'ashcastleKT2Complete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300514', 'ashcastleKT2Complete', '0', '1', 'quest timer');