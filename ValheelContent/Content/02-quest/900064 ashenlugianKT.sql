DELETE FROM quest WHERE name = 'ashenlugianKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300689', 'ashenlugianKT', '0', '1000', 'kill counter');

DELETE FROM quest WHERE name = 'ashenlugianKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300690', 'ashenlugianKTComplete', '72000', '-1', 'quest timer');