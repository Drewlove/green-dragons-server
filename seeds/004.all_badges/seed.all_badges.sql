TRUNCATE TABLE all_badges RESTART IDENTITY;

INSERT INTO all_badges(pillar_id, badge_name, pic_url, 
star_rating, badge_description)
VALUES
(1, 'Kicks', 'http://bit.ly/2ZsPCUv', 1, 'Description to achieve kicks, one star'),
(1, 'Kicks', 'http://bit.ly/2ZsPCUv', 2, 'Description to achieve kicks, two star'),
(1, 'Kicks', 'http://bit.ly/2ZsPCUv', 3, 'Description to achieve kicks, three star'),
(2, 'Garden Form', 'http://bit.ly/2WUw7Yt', 1, 'Description to achieve garden form, one star'),
(2, 'Garden Form', 'http://bit.ly/2WUw7Yt', 2, 'Description to achieve garden form, two star'),
(2, 'Garden Form', 'http://bit.ly/2WUw7Yt', 3, 'Description to achieve garden form, three star'),
(3, 'Meditation', 'http://bit.ly/2Fczora', 1, 'Description to achieve meditation, one star'),
(3, 'Meditation', 'http://bit.ly/2Fczora', 2, 'Description to achieve meditation, two star'),
(3, 'Meditation', 'http://bit.ly/2Fczora', 3, 'Description to achieve meditation, three star');

--psql -f ~/Projects/A1-Review/green-dragons-server/seeds/004.all_badges/seed.all_badges.sql green_dragons; 

-- 1, ('Martial Arts'), 
-- 2, ('Food and Gardening'), 
-- 3, ('Academic and Zen');

    -- id INTEGER PRIMARY KEY GENEREATED BY DEFAULT AS IDENTITY,
    -- pillar_id INTEGER REFERENCES pillars(id),
    -- badge_name TEXT NOT NULL, 
    -- pic_url TEXT NOT NULL, 
    -- star_rating INTEGER NOT NULL, 
    -- passing_num INTEGER, 
    -- number_description TEXT