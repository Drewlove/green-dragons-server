TRUNCATE TABLE users_communities_challenges RESTART IDENTITY CASCADE; 

INSERT INTO users_communities_challenges(
    users_id, communities_challenges_id, record, stars, dragon_bucks, notes)
VALUES
(1, 1, 47, 1, 1, 'mike, green dragons jump rope 47 jumps'),
(1, 1, 63, 2, 2, 'mike, green dragons jump rope 63 jumps'),
(1, 1, 92, 3, 3, 'mike, green dragons jump rope 92 jumps'),
(1, 2, 0, 0, 1, 'mike, green dragons smoothie'),
(1, 6, 190, 0, 0, 'mike, public half mile'),
(2, 1, 78, 2, 2, 'ale, green dragons jump rope'),
(2, 4, 126, 3, 3, 'ale, dragon root boxing'),
(2, 6, 110, 3, 3, 'ale, public half mile'),
(3, 5, 12, 2, 2, 'drew, urban arrows archery accuracy'),
(3, 3, 88, 2, 2, 'drew, gro dojo cool jump rope'), 
(3, 6, 144, 2, 2, 'drew, public half mile')
--put in entries for all three of us for the public 1/2 mile run




    -- communities_challenges_id INTEGER REFERENCES communities_challenges(communities_challenges_id) ON DELETE CASCADE NOT NULL,
    -- users_id INTEGER REFERENCES users(users_id) ON DELETE CASCADE NOT NULL,  
    -- score INTEGER,
    -- stars INTEGER, 
    -- dragon_bucks NUMERIC (7, 2), 
    -- notes TEXT 

