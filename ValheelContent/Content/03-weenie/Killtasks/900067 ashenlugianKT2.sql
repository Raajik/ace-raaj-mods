DELETE FROM quest WHERE name = 'ashenlugianKT2';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300695', 'ashenlugianKT2', '0', '1000', 'kill counter');

DELETE FROM quest WHERE name = 'ashenlugianKT2Complete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300696', 'ashenlugianKT2Complete', '72000', '-1', 'quest timer');