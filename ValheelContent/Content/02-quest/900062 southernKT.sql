DELETE FROM quest WHERE name = 'southernKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300685', 'southernKT', '0', '1000', 'kill counter');

DELETE FROM quest WHERE name = 'southernKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300686', 'southernKTComplete', '72000', '-1', 'quest timer');