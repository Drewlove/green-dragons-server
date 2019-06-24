TRUNCATE TABLE communities RESTART IDENTITY CASCADE; 

INSERT INTO communities(community_type)
VALUES
('Public'), 
('Grodojo'), 
('Dragon Root'); 