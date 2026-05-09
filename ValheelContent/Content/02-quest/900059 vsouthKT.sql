DELETE FROM quest WHERE name = 'vsouthKT';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300679', 'vsouthKT', '0', '500', 'kill counter');

DELETE FROM quest WHERE name = 'vsouthKTComplete';

INSERT INTO quest (id, name, min_Delta, max_Solves, message) 
VALUES ('300680', 'vsouthKTComplete', '72000', '-1', 'quest timer');