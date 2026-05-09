DELETE FROM quest WHERE name = 'TormentedShadowSoldierKilltask';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300210', 'TormentedShadowSoldierKilltask', '0', '15', 'kill counter');

DELETE FROM quest WHERE name = 'TormentedShadowSoldierKilltaskCompleted';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300211', 'TormentedShadowSoldierKilltaskCompleted', '72000', '-1', 'quest timer');