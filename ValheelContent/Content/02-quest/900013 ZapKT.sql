DELETE FROM quest WHERE name = 'ZapKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300578', 'ZapKT', '0', '50', 'kill counter');

DELETE FROM quest WHERE name = 'ZapKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300579', 'ZapKTComplete', '7200', '-1', 'quest timer');