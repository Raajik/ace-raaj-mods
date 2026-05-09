DELETE FROM quest WHERE name = 'AMageKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('860027', 'AMageKT', '0', '50', 'kill counter');

DELETE FROM quest WHERE name = 'AMageKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('860028', 'AMageKTComplete', '7200', '-1', 'quest timer');