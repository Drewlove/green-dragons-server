TRUNCATE TABLE challenge_types RESTART IDENTITY CASCADE;

INSERT INTO challenge_types
(challenge_types_name, challenge_types_description, challenge_types_best_record , units)
VALUES

(
  'Jump Rope Challenge',
'Jump rope as many times as you can in 1 minute.',
'highest',
'jumps'
),

(
  'Fitness Boxing',
  'Hit as many targets as possible in 2 minutes.',
  'highest',
  'seconds'
),

(
  'Archery Accuracy',
  'Score as many points as you can in 5 shots with the bow and arrow',
  'highest',
  'targets'
),

(
  '1/2 Mile Run',
  'Run a 1/2 mile as fast as possible.',
  'lowest',
  'seconds');

-- SEED SCRIPT
-- psql -f ~/Projects/A1-Review/green-dragons-server/seeds/003.challenges/seed.challenges.sql green_dragons;
