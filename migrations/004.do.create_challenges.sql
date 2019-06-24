DROP TABLE IF EXISTS challenges; 

CREATE TABLE challenges(
    id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    pic_url TEXT NOT NULL, 
    community_type INTEGER REFERENCES communities(id) ON DELETE CASCADE NOT NULL, 
    challenge_name TEXT NOT NULL,
    challenge_description TEXT NOT NULL, 
    number_type TEXT,
    dragon_bucks NUMERIC, 
    number_to_pass INTEGER
);



-- number_type describes "unit" of measurement for that challenge
-- Could be "minutes" meditating, "kicks" done in 60 seconds, "targets" hit, etc.

