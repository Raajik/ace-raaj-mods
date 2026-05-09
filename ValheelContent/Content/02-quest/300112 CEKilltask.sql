DELETE FROM quest WHERE name = 'CEKilltask';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300202', 'CEKilltask', '0', '20', 'kill counter');

DELETE FROM quest WHERE name = 'CEKilltaskCompleted';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300203', 'CEKilltaskCompleted', '72000', '-1', 'quest timer');