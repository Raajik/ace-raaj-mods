DELETE FROM quest WHERE name = 'TrexxoKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300566', 'TrexxoKT', '0', '50', 'kill counter');

DELETE FROM quest WHERE name = 'TrexxoKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300567', 'TrexxoKTComplete', '0', '1', 'quest timer');