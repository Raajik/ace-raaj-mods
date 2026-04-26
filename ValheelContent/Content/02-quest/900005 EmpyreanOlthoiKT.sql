DELETE FROM quest WHERE name = 'EmpyreanOlthoiKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300562', 'EmpyreanOlthoiKT', '0', '500', 'kill counter');

DELETE FROM quest WHERE name = 'EmpyreanOlthoiKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300563', 'EmpyreanOlthoiKTComplete', '3600', '-1', 'quest timer');