DELETE FROM quest WHERE name = 'ChiefElderKilltask';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300212', 'ChiefElderKilltask', '0', '5', 'kill counter');

DELETE FROM quest WHERE name = 'ChiefElderKilltaskCompleted';

INSERT INTO quest (id, name, min_Delta, max_Solves, message)
VALUES ('300213', 'ChiefElderKilltaskCompleted', '7200', '-1', 'quest timer');