DELETE FROM quest WHERE name = 'coloKT2';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('900097', 'coloKT2', '0', '1', 'kill counter');

DELETE FROM quest WHERE name = 'coloKT2Complete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('900098', 'coloKT2Complete', '0', '1', 'quest timer');