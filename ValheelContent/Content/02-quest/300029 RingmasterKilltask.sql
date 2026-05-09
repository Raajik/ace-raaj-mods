DELETE FROM quest WHERE name = 'RingmasterKilltask';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300036', 'RingmasterKilltask', '0', '1', 'kill counter');

DELETE FROM quest WHERE name = 'RingmasterKilltaskCompleted';

INSERT INTO quest (id, name, min_Delta, max_Solves, message)
VALUES ('300037', 'RingmasterKilltaskCompleted', '72000', '1', 'quest timer');