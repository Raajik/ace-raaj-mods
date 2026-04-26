DELETE FROM quest WHERE name = 'forbKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('860023', 'forbKT', '0', '500', 'kill counter');

DELETE FROM quest WHERE name = 'forbKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('860024', 'forbKTComplete', '7200', '-1', 'quest timer');