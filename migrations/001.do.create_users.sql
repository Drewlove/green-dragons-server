DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM pg_type WHERE typname = 'community') THEN
        CREATE TYPE community AS ENUM ('Grodojo', 'D. Root', 'Public');
    END IF;
END
$$; 

CREATE TABLE users (
  id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
  first_name TEXT NOT NULL,
  last_name TEXT NOT NULL, 
  pic_url TEXT NOT NULL, 
  dragon_level TEXT, 
  community_type community NOT NULL, 
  user_dragon_bucks MONEY NOT NULL, 
  age INTEGER NOT NULL
);