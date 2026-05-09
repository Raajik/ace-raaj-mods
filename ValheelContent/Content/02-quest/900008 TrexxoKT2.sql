DELETE FROM quest WHERE name = 'TrexxoKT2';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300568', 'TrexxoKT2', '0', '50', 'kill counter');

DELETE FROM quest WHERE name = 'TrexxoKT2Complete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300569', 'TrexxoKT2Complete', '0', '1', 'quest timer');