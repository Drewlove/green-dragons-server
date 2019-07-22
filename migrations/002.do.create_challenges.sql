DROP TABLE IF EXISTS challenges; 

CREATE TABLE challenges(
    challenges_id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    pic_url TEXT NOT NULL, 
    challenges_name TEXT NOT NULL,
    challenge_description TEXT NOT NULL,
    dragon_bucks NUMERIC
);