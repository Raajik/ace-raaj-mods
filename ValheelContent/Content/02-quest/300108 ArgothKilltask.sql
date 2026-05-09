DELETE FROM quest WHERE name = 'ArgothKilltask';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300200', 'ArgothKilltask', '0', '1', 'kill counter');

DELETE FROM quest WHERE name = 'ArgothKilltaskCompleted';

INSERT INTO quest (id, name, min_Delta, max_Solves, message)
VALUES ('300201', 'ArgothKilltaskCompleted', '72000', '1', 'quest timer');