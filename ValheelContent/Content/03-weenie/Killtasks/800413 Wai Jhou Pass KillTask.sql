DELETE FROM quest WHERE name = 'WaiJhouPassKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300302', 'WaiJhouPassKT', '0', '20', 'kill counter');

DELETE FROM quest WHERE name = 'WaiJhouPassKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300303', 'WaiJhouPassKTComplete', '72000', '-1', 'quest timer');