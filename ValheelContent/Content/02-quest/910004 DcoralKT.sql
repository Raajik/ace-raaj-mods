DELETE FROM quest WHERE name = 'dcoralKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('860007', 'dcoralKT', '0', '500', 'kill counter');

DELETE FROM quest WHERE name = 'dcoralKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('860008', 'dcoralKTComplete', '7200', '-1', 'quest timer');