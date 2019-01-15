-- CREATE TABLE restaurant (
--     id SERIAL PRIMARY KEY,
--     name varchar,
--     distance integer,
--     stars integer,
--     category varchar,
--     favoritedish varchar,
--     doestakeout boolean,
--     lastimeyouatethere date 
-- );

-- ALTER TABLE restaurant ALTER COLUMN distance TYPE REAL;
-- INSERT INTO restaurant VALUES (DEFAULT,'The Original Ninfa on Navigation',0.4,5,'BBQ','goat',TRUE,'2017-8-8'),
-- (DEFAULT,'Moon Tower Inn',0.2,5,'BBQ','fastfood',TRUE,'2017-9-8'),
-- (DEFAULT,'Restaurent Monte Cristo',0.3,4,'Quickbite','fastfood',TRUE,'2017-10-8'),
-- (DEFAULT,'Eddie Vs prime',4.9,4,'seafood','salmon',FALSE,'2019-1-8'),
-- (DEFAULT,'Xochi',1.2,4,'BBQ','chicken',TRUE,'2019-8-1'),
-- (DEFAULT,'Alamo Tamale & Taco',4.3,5,'Mexican','beenTamalies',TRUE,'2017-8-8');

-- Write queries to get

-- The names of the restaurants that you gave a 5 stars to
-- SELECT name  FROM restaurant where stars =5;

-- The favorite dishes of all 5-star restaurants
-- SELECT favoritedish FROM restaurant where stars=5;

-- The the id of a restaurant by a specific restaurant name, say 'Moon Tower'
-- SELECT ID FROM restaurant where name='Moon Tower Inn';


-- restaurants in the category of 'BBQ'
-- SELECT name FROM restaurant where category='BBQ';

-- restaurants that do take out
-- SELECT name FROM restaurant where doestakeout='TRUE'; 

-- restaurants that do take out and is in the category of 'BBQ'
-- SELECT name FROM restaurant where doestakeout='TRUE' and category='BBQ';

-- restaurants within 2 miles
-- SELECT name FROM  restaurant where distance < 2;

-- restaurants you haven't ate at in the last week
-- SELECT name FROM restaurant WHERE lastimeyouatethere < '2019-01-06'

-- restaurants you haven't ate at in the last week and has 5 stars
-- SELECT name FROM  restaurant WHERE lastimeyouatethere < '2019-01-06' and stars=5

-- list restaurants by the closest distance.
-- SELECT min(distance) from restaurant;

-- -- SELECT name from  restaurant ORDER BY distance;
-- SELECT name FROM restaurant  ORDER BY distance DESC LIMIT 2;

-- list the top 2 restaurants by distance.
-- SELECT name FROM restaurant ORDER BY distance  ASC LIMIT 2; 

-- list the top 2 restaurants by stars.
-- SELECT name from restaurant ORDER BY stars DESC LIMIT 2;

-- list the top 2 restaurants by stars where the distance is less than 2 miles.
-- SELECT name from restaurant  where  distance < 2  ORDER BY stars DESC LIMIT 2;

-- count the number of restaurants in the db.
-- SELECT COUNT(name) FROM restaurant;

-- count the number of restaurants by category.
-- SELECT COUNT(name) from  restaurant GROUP BY category;

-- get the average stars per restaurant by category.
-- SELECT AVG(stars) AS AVGSTARS from restaurant GROUP BY category;

-- get the max stars of a restaurant by category.
-- SELECT max(stars) AS Maxstars from restaurant GROUP BY category;