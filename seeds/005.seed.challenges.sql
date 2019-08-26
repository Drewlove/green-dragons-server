TRUNCATE TABLE challenges RESTART IDENTITY CASCADE;  

INSERT INTO challenges 
(challenges_name, challenges_pic_url,  units)
VALUES
('Jump Rope Challenge', 
'http://bit.ly/2KhrH7h',
'jumps'),

('Fitness Boxing',  
'http://bit.ly/2FgiKXq',
'seconds'),

('Archery Accuracy',  
'http://bit.ly/2Y3MGfY', 
'targets'),

('1/2 Mile Run',
'http://bit.ly/2LuuQkB', 
'seconds'); 

--'{"Public", "Grodojo", "Dragon Root"}'

-- SEED SCRIPT
-- psql -f ~/Projects/A1-Review/green-dragons-server/seeds/003.challenges/seed.challenges.sql green_dragons; 

