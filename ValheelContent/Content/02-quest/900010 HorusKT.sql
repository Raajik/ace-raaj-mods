DELETE FROM quest WHERE name = 'HorusKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300572', 'HorusKT', '0', '50', 'kill counter');

DELETE FROM quest WHERE name = 'HorusKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300573', 'HorusKTComplete', '0', '1', 'quest timer');