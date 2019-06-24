BEGIN; 
\i /Users/Drew/Projects/A1-Review/green-dragons-server/seeds/001.pillars/seed.pillars.sql
\i /Users/Drew/Projects/A1-Review/green-dragons-server/seeds/002.communities/seed.communities.sql
\i /Users/Drew/Projects/A1-Review/green-dragons-server/seeds/003.users/seed.users.sql
\i /Users/Drew/Projects/A1-Review/green-dragons-server/seeds/004.challenges/seed.challenges.sql
\i /Users/Drew/Projects/A1-Review/green-dragons-server/seeds/005.all_badges/seed.all_badges.sql
COMMIT; 



-- SEED ALL
-- psql -f ~/Projects/A1-Review/green-dragons-server/seeds/seed.all.sql green_dragons; 