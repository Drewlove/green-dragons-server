DROP TABLE IF EXISTS users_dragon_bucks; 

CREATE TABLE users_dragon_bucks(
    users_dragon_bucks_id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY, 
    dragon_bucks NUMERIC(8, 2),
    users_id INTEGER REFERENCES users(users_id) ON DELETE CASCADE NOT NULL,
    transaction_date DATE NOT NULL, 
    notes TEXT NOT NULL
);
