DELETE FROM quest WHERE name = 'cedraicKT2';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300691', 'cedraicKT2', '0', '1', 'kill counter');

DELETE FROM quest WHERE name = 'cedraicKT2Complete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300692', 'cedraicKT2Complete', '72000', '-1', 'quest timer');