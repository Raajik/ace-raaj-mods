DELETE FROM quest WHERE name = 'tarenaKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('860009', 'tarenaKT', '0', '500', 'kill counter');

DELETE FROM quest WHERE name = 'tarenaKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('860010', 'tarenaKTComplete', '7200', '-1', 'quest timer');