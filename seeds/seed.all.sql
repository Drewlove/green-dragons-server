BEGIN; 
\i /Users/Drew/Projects/A1-Review/green-dragons-server/seeds/001.users/seed.users.sql
\i /Users/Drew/Projects/A1-Review/green-dragons-server/seeds/002.pillars/seed.pillars.sql
\i /Users/Drew/Projects/A1-Review/green-dragons-server/seeds/003.challenges/seed.challenges.sql
\i /Users/Drew/Projects/A1-Review/green-dragons-server/seeds/004.all_badges/seed.all_badges.sql
COMMIT; 



-- SEED ALL
-- psql -f ~/Projects/A1-Review/green-dragons-server/seeds/seed.all.sql green_dragons; 