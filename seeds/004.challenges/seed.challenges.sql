TRUNCATE TABLE challenges RESTART IDENTITY;  

INSERT INTO challenges 
(pic_url, community_type, challenge_name, challenge_description, 
dragon_bucks)
VALUES
('http://bit.ly/2KhrH7h', 1, 
'Cool Jump Rope Challenge', 
'How many jumps can you get in a row?', 1000),

('http://bit.ly/2XQof6r', 2, 
'Green Dragon Smoothie Challenge', 
'Can you make a video of your smoothie creation?', 2000), 

('http://bit.ly/2FgiKXq', 3, 
'Fitness Boxing Round at Dragon Root',
'How long can you go with 100% accuracy?', 500); 


--'{"Public", "Grodojo", "Dragon Root"}'






--INSERT INTO foo(foo_enum) VALUES(ARRAY['foo','bar']::tfoo[]);

-- SEED SCRIPT
-- psql -f ~/Projects/A1-Review/green-dragons-server/seeds/003.challenges/seed.challenges.sql green_dragons; 

--ARRAY['Public', 'Grodojo', 'Dragon Root']::community[]