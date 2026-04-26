DELETE FROM quest WHERE name = 'TrexxoKT3';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300570', 'TrexxoKT3', '0', '50', 'kill counter');

DELETE FROM quest WHERE name = 'TrexxoKT3Complete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300571', 'TrexxoKT3Complete', '0', '1', 'quest timer');