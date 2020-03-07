TRUNCATE TABLE users_dragon_bucks RESTART IDENTITY CASCADE; 

INSERT INTO users_dragon_bucks(dragon_bucks, users_id, transaction_date, notes)
VALUES
(-2.25, 1, '09-03-19', 'chocolate bar'),
(-4.50, 1, '09-01-19', 'video games'),
(-6.00, 1, '09-04-19', 'push pop'),
(5.50, 1, '09-10-19', '3 star challenge'),
(-1.75, 2, '09-02-19', 'candy'),
(-3.25, 2, '09-12-19', 'mean to other kids'),
(2.00, 2, '09-15-19', '2 star challenge'),
(-5.75, 2, '09-01-19', 'lots of candy'),
(-10.25, 3, '09-08-19', 'poor behavior'),
(-20.00, 3, '09-20-19', 'VIP treatment'),
(5.50, 3, '09-09-19', 'awesome challenge work'),
(-30.75, 3, '09-04-19', 'dandelion wine'); 
