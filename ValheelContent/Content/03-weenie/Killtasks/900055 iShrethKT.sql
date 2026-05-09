DELETE FROM quest WHERE name = 'IslandShrethKT2';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300671', 'IslandShrethKT2', '0', '500', 'kill counter');

DELETE FROM quest WHERE name = 'IslandShrethKT2Complete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300672', 'IslandShrethKT2Complete', '7200', '-1', 'quest timer');