DELETE FROM quest WHERE name = 'forsakenKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('900083', 'forsakenKT', '0', '1000', 'kill counter');

DELETE FROM quest WHERE name = 'forsakenKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('900084', 'forsakenKTComplete', '0', '1', 'quest timer');