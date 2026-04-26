DELETE FROM quest WHERE name = 'RynthidEnforcerKilltask';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300206', 'RynthidEnforcerKilltask', '0', '20', 'kill counter');

DELETE FROM quest WHERE name = 'RynthidEnforcerKilltaskCompleted';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300207', 'RynthidEnforcerKilltaskCompleted', '72000', '-1', 'quest timer');