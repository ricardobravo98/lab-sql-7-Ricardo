-- Q1. Which are the actors whose last names are not repeated?
SELECT actor_id, first_name, last_name, COUNT(last_name) 
FROM actor 
GROUP BY last_name
HAVING COUNT(last_name) = 1;

-- Q2. Which last names appear more than once?
SELECT actor_id, first_name, last_name, COUNT(last_name) 
FROM actor 
GROUP BY last_name
HAVING COUNT(last_name) > 1;

-- Q3. Using the rental table find out how many rentals were processed by each employee
SELECT staff_id, COUNT(staff_id) AS 'Rentals processes per Staff' FROM rental GROUP BY staff_id;

-- Q4. Using the film table, find out how many films were released each year.
SELECT COUNT(film_id), release_year FROM film GROUP BY release_year;

-- Q5. Using the film table, find out for each rating how many films were there.
SELECT rating, COUNT(rating) AS 'Count' FROM film GROUP BY rating;

-- Q6. What is the mean  average length of the film for each rating type? Round off the average lengths to two decimal places
SELECT ROUND(avg(length)) AS 'Average Length', rating FROM film GROUP BY rating;

-- Q7. Which kind of movies (rating) have a mean duration of more than two hours?
SELECT rating, avg(length) AS 'Average Length' 
FROM film 
GROUP BY rating
HAVING avg(length) > 120;