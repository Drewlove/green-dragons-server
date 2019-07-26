TRUNCATE TABLE challenges RESTART IDENTITY CASCADE;  

INSERT INTO challenges 
(challenges_name, challenges_description, pic_url,  units)
VALUES
('Cool Jump Rope Challenge', 
'How many jumps can you get in a row?',
'http://bit.ly/2KhrH7h',
'jumps'),

('Green Dragon Smoothie Challenge',
'Can you make a video of your smoothie creation?',
'http://bit.ly/2XQof6r',
'NA'), 

('Fitness Boxing Round at Dragon Root',  
'How long can you go with 100% accuracy?',
'http://bit.ly/2FgiKXq',
'seconds'),

('Archery Accuracy',  
'How many targets can you hit in 1 minute?',
'http://bit.ly/2Y3MGfY', 
'targets'),

('1/2 Mile Run',
'How fast can you run a 1/2 mile?',
'http://bit.ly/2LuuQkB', 
'seconds'); 

--'{"Public", "Grodojo", "Dragon Root"}'

-- SEED SCRIPT
-- psql -f ~/Projects/A1-Review/green-dragons-server/seeds/003.challenges/seed.challenges.sql green_dragons; 

