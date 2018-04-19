use cars;

insert into Corvettes values
(1, 'coupe', 18.0, 1997, 4),
(2, 'hatchback', 58.0, 1996, 7),
(3, 'convertible', 13.5, 2001, 1),
(4, 'hatchback', 19.0, 1995, 2),
(5, 'hatchback', 25.0, 1991, 5),
(6, 'hardtop', 15.0, 2000, 2),
(7, 'coupe', 55.0, 1979, 10),
(8, 'convertible', 17.0, 1999, 5),
(9, 'hardtop', 17.0, 2000, 5),
(10, 'hatchback', 50.0, 1995, 7);

insert into Equipment values
(1, 'Automatic'),
(2, '4-speed'),
(3, '5-speed'),
(4, '6-speed'),
(5, 'CD'),
(6, 'Leather');

insert into States values
(1, 'Alabama'),
(2, 'Alaska'),
(3, 'Arizona'),
(4, 'Arkansas'),
(5, 'California'),
(6, 'Colorado'),
(7, 'Connecticut'),
(8, 'Delaware'),
(9, 'Florida'),
(10, 'Georgia');

insert into Corvettes_equipment values
(1, 1),
(1, 5),
(1, 6),
(2, 1),
(2, 5),
(2, 6),
(3, 1),
(3, 6),
(4, 2),
(4, 6),
(5, 1),
(5, 6),
(6, 2),
(7, 4),
(7, 6),
(8, 4),
(8, 5),
(8, 6),
(9, 4),
(9, 5),
(9, 6),
(10, 1),
(10, 5);
