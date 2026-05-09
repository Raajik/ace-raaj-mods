DELETE FROM quest WHERE name = 'PercyKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300574', 'PercyKT', '0', '1', 'kill counter');

DELETE FROM quest WHERE name = 'PercyKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300575', 'PercyKTComplete', '0', '1', 'quest timer');