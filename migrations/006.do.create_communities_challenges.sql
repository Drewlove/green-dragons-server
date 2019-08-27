DROP TABLE IF EXISTS communities_challenges; 

CREATE TABLE communities_challenges(
    communities_challenges_id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    communities_id INTEGER REFERENCES communities(communities_id) ON DELETE CASCADE NOT NULL, 
    challenges_id INTEGER REFERENCES challenges(challenges_id) ON DELETE CASCADE NOT NULL, 
    communities_challenges_name TEXT NOT NULL, 
    communities_challenges_description TEXT NOT NULL,
    open_date DATE NOT NULL DEFAULT CURRENT_DATE, 
    close_date DATE NOT NULL, 
    stars_one_minimum INTEGER,
    stars_two_minimum INTEGER,
    stars_three_minimum INTEGER, 
    stars_one_bucks NUMERIC(7, 2),
    stars_two_bucks NUMERIC(7, 2),
    stars_three_bucks NUMERIC(7, 2)
);