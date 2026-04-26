DELETE FROM quest WHERE name = 'gorthKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300720', 'gorthKT', '0', '500', 'kill counter');

DELETE FROM quest WHERE name = 'gorthKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300721', 'gorthKTComplete', '72000', '-1', 'quest timer');