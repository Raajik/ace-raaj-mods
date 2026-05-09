DELETE FROM quest WHERE name = 'mossKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('860021', 'mossKT', '0', '500', 'kill counter');

DELETE FROM quest WHERE name = 'mossKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('860022', 'mossKTComplete', '7200', '-1', 'quest timer');