BEGIN; 
\i /Users/Drew/Projects/A1-Review/fullstack-server/seeds/001.challenges/seed.challenges.sql
\i /Users/Drew/Projects/A1-Review/fullstack-server/seeds/002.users/seed.users.sql
\i /Users/Drew/Projects/A1-Review/fullstack-server/seeds/003.user_challenge_entries/seed.user_challenge_entries.sql

COMMIT; 

-- SEED ALL
-- psql -f ~/Projects/A1-Review/fullstack-server/seeds/seed.all.sql fullstack-server 