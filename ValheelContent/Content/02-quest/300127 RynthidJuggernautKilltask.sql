DELETE FROM quest WHERE name = 'RynthidJuggernautKilltask';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300208', 'RynthidJuggernautKilltask', '0', '10', 'kill counter');

DELETE FROM quest WHERE name = 'RynthidJuggernautKilltaskCompleted';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300209', 'RynthidJuggernautKilltaskCompleted', '72000', '-1', 'quest timer');