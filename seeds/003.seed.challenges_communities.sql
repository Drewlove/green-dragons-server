TRUNCATE TABLE challenges_communities RESTART IDENTITY CASCADE; 

INSERT INTO challenges_communities(challenges_id, communities_id)
VALUES
(1, 1),
(1, 2),
(1, 5),
(2, 1),
(3, 5),
(4, 4), 
(5, 1),
(5, 2),
(5, 3),
(5, 4);

-- challenges:  
-- 1, 'Cool Jump Rope Challenge', 
-- 2, 'Green Dragon Smoothie Challenge',
-- 3, 'Fitness Boxing Round at Dragon Root',  
-- 4, 'Archery Accuracy',  
-- 5, '1/2 Mile Run', 

-- communities
-- 1, 'Green Dragons', 
-- 2, 'Grodojo', 
-- 3, 'D. Root',
-- 4, 'Urban Arrows', 
-- 5, 'Public';

--if a challenge is public, 
--it should only have row in the challenges_communities table, with communities_id 
-- equal to the integer referring to public 



