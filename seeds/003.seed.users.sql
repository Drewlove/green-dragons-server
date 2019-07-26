TRUNCATE TABLE users RESTART IDENTITY CASCADE; 

INSERT INTO users(first_name, last_name, pic_url, birth_date)
VALUES
('Mike', 'Cermak', 'http://bit.ly/2IfpyW9', '1980-09-01'),
('Ale', 'Cabrera-Mondragon', 'http://bit.ly/2QFZhUJ', '1994-06-01'),
('Drew', 'Love', 'http://bit.ly/2QFUUJa', '1984-09-11'); 


-- SEED SCRIPT
-- psql -f ~/Projects/A1-Review/green-dragons-server/seeds/001.users/seed.users.sql green_dragons; 