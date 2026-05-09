DELETE FROM quest WHERE name = 'MercCommanderKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300509', 'MercCommanderKT', '0', '1', 'kill counter');

DELETE FROM quest WHERE name = 'MercCommanderKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300510', 'MercCommanderKTComplete', '0', '1', 'quest timer');