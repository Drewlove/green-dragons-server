TRUNCATE TABLE pillars RESTART IDENTITY CASCADE;

INSERT INTO pillars(pillar_name)
VALUES
('Martial Arts'), 
('Food and Gardening'), 
('Academic and Zen');

-- SEED SCRIPT
-- psql -f ~/Projects/A1-Review/green-dragons-server/seeds/002.pillars/seed.pillars.sql green_dragons; 