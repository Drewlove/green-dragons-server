TRUNCATE TABLE challenge_instances_sub_communities RESTART IDENTITY CASCADE; 

INSERT INTO challenge_instances_sub_communities(
    challenge_instances_id, sub_communities_id 
)
VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 5),
(3, 6),
(4, 7),
(4, 8); 


--challenge_instances_id
-- 1 - 'Jumping That Rope 1', 'How many times can you jump rope?', '2019-07-01', '2019-07-31', 45, 60, 90, 1, 2, 3),
-- 2 - 'Fitness Boxing Fun 1', 'How long can you go with 100% accuracy?', '2019-07-01', '2019-07-31', 60, 90, 120, 1, 2, 3), 
-- 3 - 'Ace Archery 1', 'How many targets can you hit in 1 minute?', '2019-07-01', '2019-07-31', 5, 10, 15, 1, 2, 3),
-- 4 - 'Fun 1/2 Mile Run 1', 'How fast can you run a 1/2 mile?', '2019-07-01', '2019-07-31', 180, 150, 120, 1, 2, 3);


-- sub_communities_id
-- 1 - 'green dragons 1'),
-- 2 - 'green dragons 2'),
-- 3 - 'Grodojo 1'),
-- 4 - 'Grodojo 2'),
-- 5 - 'Dragon Root 1'),
-- 6 - 'Dragon Root 2'),
-- 7 - 'Urban Arrows 1'),
-- 8 - 'Urban Arrows 2'),
-- 9 - 'Public 1'),
-- 10 - 'Public 2'); 