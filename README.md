# MySQL_TASKS
This repository contains SQL scripts for managing and querying a database. The database includes two main tables: departments and employees, and several SQL exercises to perform various operations on these tables. This project is designed for educational purposes to demonstrate basic SQL operations, including table creation, data insertion, querying, and creating stored procedures.
## MySQL TASK1 Exercises
---
 - **Create a Database** <br>
 - **Use Database**<br>
 - **Create a Table with name departments Department_id  (pk) Department_name Location_id**<br>
 - **Create a Table with name employees Employee_id (pk), first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id (fk reference)**<br>


#### 1. Select employees first name, last name, job_id and salary whose first name starts with alphabet S

#### 2. Write a query to select employee with the highest salary (using an inner query)

#### 3. Select employee with the second highest salary

#### 4. Write a query to select employees and their corresponding managers and their salaries

#### 5. Write a query to select employees and their corresponding managers and their salaries (SELF Join)

#### 6. Create a view for the above query

#### 7. Write a query to show the count of employees under each manager in descending order (from view)

#### 8. Find the count of employees in each department

#### 9. Get the count of employees hired year wise

#### 10. Create a stored procedure to get the count of employees hired in the input year (IN year, OUT count)

#### 11. Select the employees whose first_name contains “an”

#### 12. Select employee first name and the corresponding phone number in the format (_ _ _)-(_ _ _)-(_ _ _ _)

#### 13. Find the employees who joined in August, 1994

#### 14. Find the maximum salary from each department

#### 15. Write a SQL query to display the 5 least earning employees

#### 16. Find the employees hired in the 80s

#### 17. Find the employees who joined the company after 15th of the month

---
<br><br>
## MySQL TASK2 Sakila

#### MySQL Sakila Files Overview:
- **Mysql Task Sakila setup.pdf**<br> 
   This document contains the instructions and TASK2 exercises.
- **TASK2_Mysql_Sakila_QNA.pdf**<br>
   This file includes the TASK 2 questions along with the corresponding SQL query answers.
- **TASK2_Mysql_Sakila.sql**<br>
   This SQL file contains the SQL queries used to answer the TASK2 questions.
- **sakila-schema.sql**<br>
   This script contains the SQL commands to create the structure of the Sakila Database.
- **sakila-data.sql**<br>
   This script is used to insert data into the Sakila Database after the structure has been created.
- **sakila.mwb**<br>
   This is a MySQL Workbench data model file. You can open it in MySQL Workbench to explore and examine the database structure visually.

## MySQL TASK2 Sakila Exercises

#### 1. Display the first and last name of each actor in a single column in upper case letters in alphabetic order. Name the column Actor Name. 

#### 2. Find all actors whose last name contain the letters GEN 

#### 3. Using IN, display the country_id and country columns of the following countries: Afghanistan, Bangladesh, and China

#### 4. List the last names of actors, as well as how many actors have that last name.  

#### 5. List last names of actors and the number of actors who have that last name, but only for names that are shared by at least two actors

#### 6. The actor HARPO WILLIAMS was accidentally entered in the actor table as GROUCHO WILLIAMS. Write a query to fix the record. 

#### 7. UseJOINto display the first and last names, as well as the address, of each staff member. Use the tables staff and address: 

#### 8. List each film and the number of actors who are listed for that film. Use tables film_actor and film. Use inner join. 

#### 9. Howmanycopies of the film Hunchback Impossible exist in the inventory system?  

#### 10. Using the tables payment and customer and the JOIN command, list the total paid by each customer. List the customers alphabetically by last name  

#### 11. The music of Queen and Kris Kristofferson have seen an unlikely resurgence. As an unintended consequence, films starting with the letters K and Q have also soared in popularity. Use subqueries to display the titles of movies starting with the letters K and Q whose language is English. 

#### 12. Use subqueries to display all actors who appear in the film Alone Trip.

#### 13. You want to run an email marketing campaign in Canada, for which you will need the names and email addresses of all Canadian customers. Use joins to retrieve this information.

#### 14. Sales have been lagging among young families, and you wish to target all family movies for a promotion. Identify all movies categorized as famiy films.

#### 15. Create a Stored procedure to get the count of films in the input category (IN category_name, OUT count) 

#### 16. Display the most frequently rented movies in descending order.

#### 17. Write a query to display for each store its store ID, city, and country. 

#### 18. List the genres and its gross revenue. 

#### 19. Create a View for the above query(18) 

#### 20. Select top 5 genres in gross revenue view. 

  ----
