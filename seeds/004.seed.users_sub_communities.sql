TRUNCATE TABLE users_sub_communities RESTART IDENTITY CASCADE;

INSERT INTO users_sub_communities(users_id, sub_communities_id)
VALUES
    (1, 1),
    (1, 3),
    (1, 5),
    (2, 1),
    (2, 4),
    (2, 6),
    (3, 1),
    (3, 6),
    (3, 8);


-- 1 Mike
-- 2 Ale
-- 3 Drew

-- SUB COMMUNITIES
-- id: 1(1, 'green dragons 1'),
-- id: 2(1, 'green dragons 2'),
-- id: 3(2, 'Grodojo 1'),
-- id: 4(2, 'Grodojo 2'),
-- id: 5(3, 'Dragon Root 1'),
-- id: 6(3, 'Dragon Root 2'),
-- id: 7(4, 'Urban Arrows 1'),
-- id: 8(4, 'Urban Arrows 2'),
-- id: 9(5, 'Public 1'),
-- id: 10(5, 'Public 2');
