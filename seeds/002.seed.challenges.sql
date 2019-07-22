TRUNCATE TABLE challenges RESTART IDENTITY CASCADE;  

INSERT INTO challenges 
(pic_url, challenges_name, challenge_description, 
dragon_bucks)
VALUES
('http://bit.ly/2KhrH7h', 
'Cool Jump Rope Challenge', 
'How many jumps can you get in a row?', 800),

('http://bit.ly/2XQof6r', 
'Green Dragon Smoothie Challenge',
'Can you make a video of your smoothie creation?', 700), 

('http://bit.ly/2FgiKXq',
'Fitness Boxing Round at Dragon Root',  
'How long can you go with 100% accuracy?', 500),

('http://bit.ly/2Y3MGfY',
'Archery Accuracy',  
'How many targets can you hit in 1 minute?', 750),

('http://bit.ly/2LuuQkB', 
'1/2 Mile Run', 
'How fast can you run a 1/2 mile?', 900); 

--'{"Public", "Grodojo", "Dragon Root"}'

-- SEED SCRIPT
-- psql -f ~/Projects/A1-Review/green-dragons-server/seeds/003.challenges/seed.challenges.sql green_dragons; 

