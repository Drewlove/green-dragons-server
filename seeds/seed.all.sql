BEGIN; 
\i /Users/Drew/Projects/A1-Review/capstone-server/seeds/001.seed.users.sql
\i /Users/Drew/Projects/A1-Review/capstone-server/seeds/002.seed.communities.sql
\i /Users/Drew/Projects/A1-Review/capstone-server/seeds/003.seed.sub_communities.sql
\i /Users/Drew/Projects/A1-Review/capstone-server/seeds/004.seed.users_sub_communities.sql
\i /Users/Drew/Projects/A1-Review/capstone-server/seeds/005.seed.challenge_types.sql
\i /Users/Drew/Projects/A1-Review/capstone-server/seeds/006.seed.challenge_instances.sql
\i /Users/Drew/Projects/A1-Review/capstone-server/seeds/007.seed.challenge_instances_sub_communities.sql
\i /Users/Drew/Projects/A1-Review/capstone-server/seeds/008.seed.users_challenge_instances.sql

COMMIT; 

-- SEED ALL
-- psql -f ~/Projects/A1-Review/capstone-server/seeds/seed.all.sql green_dragons;