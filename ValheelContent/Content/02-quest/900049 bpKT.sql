DELETE FROM quest WHERE name = 'bpKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300659', 'bpKT', '0', '500', 'kill counter');

DELETE FROM quest WHERE name = 'bpKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300660', 'bpKTComplete', '7200', '-1', 'quest timer');