DELETE FROM quest WHERE name = 'dpKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300722', 'dpKT', '0', '500', 'kill counter');

DELETE FROM quest WHERE name = 'dpKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300723', 'dpKTComplete', '72000', '-1', 'quest timer');