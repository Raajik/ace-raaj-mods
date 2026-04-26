DELETE FROM quest WHERE name = 'SubLichKilltask';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('670017', 'SubLichKilltask', '0', '10', 'kill counter');

DELETE FROM quest WHERE name = 'SubLichKilltaskCompleted';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('67001', 'SubLichKilltaskCompleted', '72000', '1', 'quest timer');