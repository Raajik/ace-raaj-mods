DELETE FROM quest WHERE name = 'DarkorderKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300576', 'DarkorderKT', '0', '1', 'kill counter');

DELETE FROM quest WHERE name = 'DarkorderKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300577', 'DarkorderKTComplete', '0', '1', 'quest timer');