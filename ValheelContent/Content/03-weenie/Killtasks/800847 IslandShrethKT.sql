DELETE FROM quest WHERE name = 'IslandShrethKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300332', 'IslandShrethKT', '0', '500', 'kill counter');

DELETE FROM quest WHERE name = 'IslandShrethKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300333', 'IslandShrethKTComplete', '7200', '-1', 'quest timer');