BEGIN; 
\i /Users/Drew/Projects/A1-Review/capstone-server/seeds/001.seed.communities.sql
\i /Users/Drew/Projects/A1-Review/capstone-server/seeds/002.seed.challenges.sql
\i /Users/Drew/Projects/A1-Review/capstone-server/seeds/003.seed.users.sql
\i /Users/Drew/Projects/A1-Review/capstone-server/seeds/004.seed.communities_challenges.sql
\i /Users/Drew/Projects/A1-Review/capstone-server/seeds/005.seed.users_communities_challenges.sql

COMMIT; 

-- SEED ALL
-- psql -f ~/Projects/A1-Review/capstone-server/seeds/seed.all.sql green_dragons;