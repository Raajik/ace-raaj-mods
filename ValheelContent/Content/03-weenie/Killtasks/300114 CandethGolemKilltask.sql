DELETE FROM quest WHERE name = 'CandethGolemKilltask';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300204', 'CandethGolemKilltask', '0', '20', 'kill counter');

DELETE FROM quest WHERE name = 'CandethGolemKilltaskCompleted';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300205', 'CandethGolemKilltaskCompleted', '72000', '-1', 'quest timer');