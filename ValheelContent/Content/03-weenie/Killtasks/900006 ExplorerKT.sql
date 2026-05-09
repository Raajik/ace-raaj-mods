DELETE FROM quest WHERE name = 'ExplorerKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300564', 'ExplorerKT', '0', '50', 'kill counter');

DELETE FROM quest WHERE name = 'ExplorerKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300565', 'ExplorerKTComplete', '0', '1', 'quest timer');