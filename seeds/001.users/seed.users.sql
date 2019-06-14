TRUNCATE TABLE users RESTART IDENTITY; 

INSERT INTO users(first_name, last_name, pic_url, dragon_level, community_type, user_dragon_bucks, age)
VALUES
('Mike', 'Cermak', 'http://bit.ly/2IfpyW9', 'Dainty Tulip', 'Grodojo', 100, 38),
('Ale', 'Cabrera-Mondragon', 'http://bit.ly/2QFZhUJ','Guru Master', 'D. Root', 500, 27),
('Drew', 'Love', 'http://bit.ly/2QFUUJa','Ninja Web Developer', 'Public', 300, 34); 


-- SEED SCRIPT
-- psql -f ~/Projects/A1-Review/green-dragons-server/seeds/001.users/seed.users.sql green_dragons; 