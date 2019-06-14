TRUNCATE TABLE challenges RESTART IDENTITY; 

INSERT INTO challenges 
(pic_url, pillar_id, community_type, challenge_name, challenge_description, 
dragon_bucks, number_type)
VALUES
('http://bit.ly/2KhrH7h', 1, 'Public', 'February Jump Rope Challenge', 
'How many jumps can you get in a row?', 55, 'jumps'); 



-- SEED SCRIPT
-- psql -f ~/Projects/A1-Review/green-dragons-server/seeds/003.challenges/seed.challenges.sql green_dragons; 