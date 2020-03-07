TRUNCATE TABLE users RESTART IDENTITY CASCADE;

INSERT INTO users(first_name, last_name, birth_date)
VALUES
('Mike', 'Cermak', '1980-09-01'),
('Ale', 'Cabrera-Mondragon', '1994-06-01'),
('Drew', 'Love', '1984-09-11');


-- SEED SCRIPT
-- psql -f ~/Projects/A1-Review/green-dragons-server/seeds/001.users/seed.users.sql green_dragons;
