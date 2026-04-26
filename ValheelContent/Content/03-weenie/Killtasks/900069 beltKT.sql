DELETE FROM quest WHERE name = 'beltKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300699', 'beltKT', '0', '1000', 'kill counter');

DELETE FROM quest WHERE name = 'beltKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300700', 'beltKTComplete', '72000', '-1', 'quest timer');