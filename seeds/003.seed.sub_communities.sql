TRUNCATE TABLE sub_communities RESTART IDENTITY CASCADE; 

INSERT INTO sub_communities(communities_id, sub_communities_name)
VALUES 
(1, 'ZZ green dragons 1'),
(1, 'BB green dragons 2'),
(2, 'ZZ Grodojo 1'),
(3, 'BB Dragon Root 2'),
(4, 'Urban Arrows 1'),
(4, 'Urban Arrows 2'),
(5, 'Public 1'),
(5, 'Public 2'),
(2, 'Grodojo 2'),
(3, 'Dragon Root 1'); 


    -- ('Green Dragons'), 
    -- ('Grodojo'), 
    -- ('Dragon Root'),
    -- ('Urban Arrows'), 
    -- ('Public');