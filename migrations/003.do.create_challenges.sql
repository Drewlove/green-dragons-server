DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM pg_type WHERE typname = 'community') THEN
        CREATE TYPE community AS ENUM ('Grodojo', 'D. Root', 'Public');
    END IF;
END
$$; 

CREATE TABLE challenges(
    id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    pic_url TEXT NOT NULL, 
    pillar_id INTEGER REFERENCES pillars(id), 
    community_type community NOT NULL, 
    challenge_name TEXT NOT NULL,
    challenge_description TEXT NOT NULL, 
    dragon_bucks MONEY,
    number_type TEXT,
    challenge_level INTEGER, 
    number_to_pass INTEGER
);


-- number_type describes "unit" of measurement for that challenge
-- Could be "minutes" meditating, "kicks" done in 60 seconds, "targets" hit, etc.

