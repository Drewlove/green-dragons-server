DROP TABLE IF EXISTS challenge_instances_sub_communities; 

CREATE TABLE challenge_instances_sub_communities(
    challenge_instances_sub_communities_id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    challenge_instances_id INTEGER REFERENCES challenge_instances(challenge_instances_id) NOT NULL, 
    sub_communities_id INTEGER REFERENCES sub_communities(sub_communities_id) NOT NULL
);

