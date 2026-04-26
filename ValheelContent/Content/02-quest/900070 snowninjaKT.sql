DELETE FROM quest WHERE name = 'snowninjaKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300701', 'snowninjaKT', '0', '1000', 'kill counter');

DELETE FROM quest WHERE name = 'snowninjaKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300702', 'snowninjaKTComplete', '72000', '-1', 'quest timer');