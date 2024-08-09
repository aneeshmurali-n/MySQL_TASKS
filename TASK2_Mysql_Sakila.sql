USE sakila;
SELECT COUNT(*) FROM film;



# 1. Display the first and last name of each actor in a single column in upper case letters in alphabetic order. Name the column Actor Name.
SELECT 
	CONCAT(UPPER(first_name), ' ',UPPER(last_name)) AS "Actor Name"
FROM
	actor
ORDER BY
	CONCAT(first_name, ' ',last_name);



# 2. Find all actors whose last name contain the letters GEN
SELECT 
	*
FROM 
	actor
WHERE
	last_name LIKE "%GEN%";
    
    
# 3. Using IN, display the country_id and country columns of the following countries: Afghanistan, Bangladesh, and China:
SELECT 
	*
FROM
	country
WHERE 
	country IN ("Afghanistan","Bangladesh","China");



# 4. List the last names of actors, as well as how many actors have that last name.
SELECT
	last_name, COUNT(*) AS "Number of actors with the same last name"
FROM
	actor
GROUP BY 
	last_name;


    
# 5. List last names of actors and the number of actors who have that last name, but only for names that are shared by at least two actors     
SELECT
	last_name, COUNT(*) AS "Number of actors with the same last name"
FROM 
	actor
GROUP BY
	last_name
HAVING
	COUNT(*) >= 2;
    
    
    
# 6. The actor HARPO WILLIAMS was accidentally entered in the actor table as GROUCHO WILLIAMS. Write a query to fix the record.
UPDATE 
	actor
SET
	first_name = "HARPO"
WHERE
	first_name = "GROUCHO" AND last_name = "WILLIAMS";



 # 7. Use JOIN to display the first and last names, as well as the address, of each staff member. Use the tables staff and address
SELECT
	s.first_name,
	s.last_name,
    a.address 
FROM
	staff s   
JOIN 
	address a ON s.address_id = a.address_id ;
    
    

# 8. List each film and the number of actors who are listed for that film. Use tables film_actor and film. Use inner join.    
SELECT
    f.title AS "Film Title",
    COUNT(*) AS "Number of actors listed"
FROM
    film f
INNER JOIN
    film_actor fa ON f.film_id = fa.film_id
GROUP BY
    f.title;



# 9. How many copies of the film Hunchback Impossible exist in the inventory system?
SELECT
	COUNT(*) AS "Number of Hunchback Impossible copies in the inventory"
FROM
	inventory i
JOIN
	film f ON i.film_id = f.film_id
WHERE
	f.title="HUNCHBACK IMPOSSIBLE";
    
    
    
# 10. Using the tables payment and customer and the JOIN command, list the total paid by each customer. List the customers alphabetically by last name    
SELECT 
	c.first_name,
    c.last_name,
    SUM(p.amount) AS "Total paid by each customer"
    
FROM 
	customer c 
JOIN 
	payment p ON c.customer_id = p.customer_id
GROUP BY 
	c.first_name,c.last_name ;
    


# 11. The music of Queen and Kris Kristofferson have seen an unlikely resurgence. As an unintended consequence, 
# films starting with the letters K and Q have also soared in popularity. 
# Use subqueries to display the titles of movies starting with the letters K and Q whose language is English.
SELECT
	f.title
FROM
	film f
WHERE
	(f.title LIKE "K%" OR f.title LIKE "Q%") AND f.language_id = ( SELECT l.language_id FROM language l WHERE name = "English");
    
    
    
# 12. Use subqueries to display all actors who appear in the film Alone Trip.    
SELECT
	CONCAT(first_name, ' ',last_name) AS "Actors in the film Alone Trip."
FROM
	actor
WHERE
	actor_id IN (SELECT actor_id FROM film_actor WHERE film_id = ( SELECT film_id FROM film WHERE title = "ALONE TRIP"));
                
                
    
# 13. You want to run an email marketing campaign in Canada, for which you will need the names and email addresses of all Canadian customers. 
# Use joins to retrieve this information.   
SELECT
	c.first_name,
    c.last_name,
    c.email
FROM
	customer c
JOIN
	address a ON c.address_id = a.address_id
JOIN
	city ci ON a.city_id =  ci.city_id
JOIN
	country co ON  ci.country_id =  co.country_id 
WHERE
	co.country = "Canada";



# 14. Sales have been lagging among young families, and you wish to target all family movies for a promotion. Identify all movies categorized as famiy films.
SELECT
	f.title AS "Family Category Films"
FROM
	film f 
JOIN
	film_category fc ON f.film_id = fc.film_id
JOIN 
	category c ON fc.category_id = c.category_id
WHERE    
	c.name = "Family"; 
    
    

# 15. Create a Stored procedure to get the count of films in the input category (IN category_name, OUT count)
DELIMITER //
CREATE PROCEDURE FilmCountBy(IN category_name VARCHAR(50), OUT count INT)
BEGIN                                       # Marks the start of the procedure
    SELECT 
		COUNT(f.film_id) 					# count number of film records that match the input category
    INTO 
		count	                    # The result of COUNT is stored in the count variable
    FROM 
		film f                          # from film table
    JOIN 
		film_category fc ON f.film_id = fc.film_id  # Join film_category table as fc with film table based on the film_id.
    JOIN 
		category c ON fc.category_id = c.category_id # Join category table as c with film_category table based on category_id
    WHERE 
		c.name = category_name; 
END //
DELIMITER ;

CALL FilmCountBy("Action",@count);       # call procedure 
SELECT @count AS "Action Films Count";   # show result

    
    
    
    
    
