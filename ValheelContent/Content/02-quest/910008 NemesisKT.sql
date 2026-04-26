DELETE FROM quest WHERE name = 'nemesisKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('860015', 'nemesisKT', '0', '500', 'kill counter');

DELETE FROM quest WHERE name = 'nemesisKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('860016', 'nemesisKTComplete', '7200', '-1', 'quest timer');