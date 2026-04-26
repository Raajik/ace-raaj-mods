DELETE FROM quest WHERE name = 'WaiJhouPassKT2';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300308', 'WaiJhouPassKT2', '0', '20', 'kill counter');

DELETE FROM quest WHERE name = 'WaiJhouPassKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300309', 'WaiJhouPassKT2Complete', '72000', '-1', 'quest timer');