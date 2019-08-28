TRUNCATE TABLE challenge_instances RESTART IDENTITY CASCADE; 

INSERT INTO challenge_instances(challenge_types_id, challenge_instances_name, 
challenge_instances_description, open_date, close_date, stars_one_minimum, stars_two_minimum, stars_three_minimum, 
stars_one_bucks, stars_two_bucks, stars_three_bucks)
VALUES
(1, 'Jumping That Rope 1', 'How many times can you jump rope?', '2019-07-01', '2019-07-31', 45, 60, 90, 1, 2, 3),
(2, 'Fitness Boxing Fun 1', 'How long can you go with 100% accuracy?', '2019-07-01', '2019-07-31', 60, 90, 120, 1, 2, 3), 
(3, 'Ace Archery 1', 'How many targets can you hit in 1 minute?', '2019-07-01', '2019-07-31', 5, 10, 15, 1, 2, 3),
(4, 'Fun 1/2 Mile Run 1', 'How fast can you run a 1/2 mile?', '2019-07-01', '2019-07-31', 180, 150, 120, 1, 2, 3);

-- challenge_types:  
-- 1, 'Cool Jump Rope Challenge', 
-- 2, 'Fitness Boxing Round at Dragon Root',  
-- 3, 'Archery Accuracy',  
-- 4, '1/2 Mile Run', 




