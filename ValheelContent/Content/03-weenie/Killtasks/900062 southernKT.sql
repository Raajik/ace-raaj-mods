DELETE FROM quest WHERE name = 'southernKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300685', 'centralKT', '0', '1000', 'kill counter');

DELETE FROM quest WHERE name = 'centralKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300686', 'centralKTComplete', '72000', '-1', 'quest timer');