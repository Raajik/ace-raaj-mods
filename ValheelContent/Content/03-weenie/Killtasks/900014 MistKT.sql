DELETE FROM quest WHERE name = 'MistKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300580', 'MistKT', '0', '50', 'kill counter');

DELETE FROM quest WHERE name = 'MistKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300581', 'MistKTComplete', '7200', '-1', 'quest timer');