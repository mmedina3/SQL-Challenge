// create 3 tables
CREATE TABLE user( id INTEGER, name TEXT);

CREATE TABLE tweets( user_id INTEGER, tweet TEXT, post_date DATE);

CREATE TABLE follow( user_id INTEGER, follower_id INTEGER);

// Insert tweets given by user
INSERT INTO user VALUES(1, 'Michelle'), (2, 'Vivian'), (3, 'Zhen Zhen'), (4, 'Zaire'), (5, 'Stephanie');

//Insert 10 more recent tweets
INSERT INTO tweets VALUES
(1, "My First Tweet!", 2018-02-04),
(1, "Happy Pi Day!", 2018-03-14),
(2, "Question-Milk First? or Cereal First?", 2018-03-18),
(2, "Question- Chicken? or the Egg?", 2017-06-09),
(3, "I love Python!", 2016-03-07),
(3, "Stay focused", 2017-09-02),
(4, "I love soup", 2018-02-15),
(4, "u right, u right", 2016-04-04),
(5,"hehehe", 2017-05-05),
(5, "hahaha", 2016-12-27);

//Insert info for follower
INSERT INTO follow VALUES(1, 32429), (2, 1234), (3, 3423), (4, 4123), (5, 2439);

//ALL tweets from a given user
SELECT user_id, tweet
FROM tweets;

//the 10 most recent tweets
SELECT tweet, post_date
FROM tweets
ORDER BY post_date DESC;

//use JOIN to get user's info along with their tweets
SELECT name, tweet
FROM user
JOIN tweets
ON user.id = tweets.user_id;

//find which user has the most followers
SELECT MAX(follower_id), name
FROM follow
JOIN user;

//Average followers
SELECT AVG(follower_id)
FROM follow;
