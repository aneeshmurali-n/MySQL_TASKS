# MySQL TASK1 2024, Aneesh Murali Nariyampully


CREATE DATABASE entri_assignment; # Create a Database name entri_assignment

USE entri_assignment; # Use database entri_assignment

# Create a Table with name departments and Department_id  (pk) Department_name Location_id
CREATE TABLE departments
(
Department_id INT NOT NULL PRIMARY KEY, 
Department_name VARCHAR(30),
Location_id INT
); 

# Create a Table with name employees Employee_id  (pk)  ,first_name,last_name ,email,phone_number,hire_date, 
# job_id, salary, commission_pct, manager_id, department_id (fk reference)
CREATE TABLE employees
(
Employee_id INT NOT NULL PRIMARY KEY,
first_name VARCHAR(30) NOT NULL,
last_name VARCHAR(30) NOT NULL,
email VARCHAR(100), 
phone_number VARCHAR(12),
hire_date DATE,
job_id VARCHAR(30),
salary DECIMAL(10,2),
commission_pct DECIMAL(10,2),
manager_id INT,
department_id INT NOT NULL,
FOREIGN KEY (department_id) REFERENCES departments(Department_id)
);

# Insert into Departments table
INSERT INTO departments VALUES ( 20, 'Marketing', 180);
INSERT INTO departments VALUES ( 30, 'Purchasing', 1700);
INSERT INTO departments VALUES ( 40,'Human Resources', 2400);
INSERT INTO departments VALUES ( 50, 'Shipping', 1500);
INSERT INTO departments VALUES ( 60, 'IT', 1400);
INSERT INTO departments VALUES ( 70, 'Public Relations', 2700);
INSERT INTO departments VALUES ( 80, 'Sales', 2500 );
INSERT INTO departments VALUES ( 90, 'Executive', 1700);
INSERT INTO departments VALUES ( 100, 'Finance', 1700);
INSERT INTO departments VALUES ( 110, 'Accounting', 1700);
INSERT INTO departments VALUES ( 120, 'Treasury', 1700);
INSERT INTO departments VALUES ( 130, 'Corporate Tax', 1700 );
INSERT INTO departments VALUES ( 140, 'Control And Credit', 1700);
INSERT INTO departments VALUES ( 150, 'Shareholder Services', 1700);
INSERT INTO departments VALUES ( 160, 'Benefits', 1700);
INSERT INTO departments VALUES ( 170, 'Payroll', 1700);


# Insertinto employees table
INSERT INTO employees VALUES (100, 'Steven', 'King', 'SKING', '515.123.4567', '1987-06-17' , 'AD_PRES', 24000 , NULL, NULL, 20);
INSERT INTO employees VALUES (101, 'Neena' , 'Kochhar' , 'NKOCHHAR' , '515.123.4568' , '1989-11-21' , 'AD_VP' , 17000 , NULL , 100 , 20);
INSERT INTO employees VALUES (102 , 'Lex' , 'De Haan' , 'LDEHAAN' , '515.123.4569' , '1993-09-12' , 'AD_VP' , 17000 , NULL , 100 , 30);
INSERT INTO employees VALUES (104 , 'Bruce' , 'Ernst' , 'BERNST' , '590.423.4568' , '1991-05-21',  'IT_PROG' , 6000 , NULL , 103 , 60);
INSERT INTO employees VALUES (105 , 'David' , 'Austin' , 'DAUSTIN' , '590.423.4569' , '1997-06-25',  'IT_PROG' , 4800 , NULL , 103 , 60);
INSERT INTO employees VALUES (106 , 'Valli' , 'Pataballa' , 'VPATABAL' , '590.423.4560' , '1998-02-05',  'IT_PROG' , 4800 , NULL , 103 , 40);
INSERT INTO employees VALUES (107 , 'Diana' , 'Lorentz' , 'DLORENTZ' , '590.423.5567' , '1999-02-09',  'IT_PROG' , 4200 , NULL , 103 , 40);
INSERT INTO employees VALUES (108 , 'Nancy' , 'Greenberg' , 'NGREENBE' , '515.124.4569' , '1994-08-17',  'FI_MGR' , 12000 , NULL , 101 , 100);
INSERT INTO employees VALUES (109 , 'Daniel' , 'Faviet' , 'DFAVIET' , '515.124.4169' , '1994-08-12',  'FI_ACCOUNT' , 9000 , NULL , 108 , 170);
INSERT INTO employees VALUES (110 , 'John' , 'Chen' , 'JCHEN' , '515.124.4269' , '1997-04-09',  'FI_ACCOUNT' , 8200 , NULL , 108 , 170);
INSERT INTO employees VALUES (111 , 'Ismael' , 'Sciarra' , 'ISCIARRA' , '515.124.4369' , '1997-02-01',  'FI_ACCOUNT' , 7700 , NULL, 108, 160);
INSERT INTO employees VALUES (112 , 'Jose Manuel' , 'Urman' , 'JMURMAN' , '515.124.4469' , '1998-06-03', 'FI_ACCOUNT' , 7800 , NULL, 108, 150);
INSERT INTO employees VALUES (114 , 'Den' , 'Raphaely' , 'DRAPHEAL' , '515.127.4561' , '1994-11-08',  'PU_MAN' , 11000 , NULL , 100 , 30);
INSERT INTO employees VALUES (115 , 'Alexander' , 'Khoo' , 'AKHOO' , '515.127.4562' , '1995-05-12',  'PU_CLERK' , 3100 , NULL , 114 , 80);
INSERT INTO employees VALUES (116 , 'Shelli' , 'Baida' , 'SBAIDA' , '515.127.4563' ,'1997-12-13', 'PU_CLERK' , 2900 , NULL , 114 , 70);
INSERT INTO employees VALUES (117 , 'Sigal' , 'Tobias' , 'STOBIAS' , '515.127.4564' , '1997-09-10', 'PU_CLERK' , 2800 , NULL , 114 , 30);
INSERT INTO employees VALUES (118 , 'Guy' , 'Himuro' , 'GHIMURO' , '515.127.4565' , '1998-01-02',  'PU_CLERK' , 2600 , NULL , 114 , 60);
INSERT INTO employees VALUES (119 , 'Karen' , 'Colmenares' , 'KCOLMENA' , '515.127.4566' , '1999-04-08',  'PU_CLERK' , 2500 , NULL , 114 , 130);
INSERT INTO employees VALUES (120 , 'Matthew' , 'Weiss' , 'MWEISS' , '650.123.1234' ,'1996-07-18',  'ST_MAN' , 8000 , NULL , 100 , 50);
INSERT INTO employees VALUES (122 , 'Payam' , 'Kaufling' , 'PKAUFLIN' , '650.123.3234' ,'1995-05-01',  'ST_MAN' , 7900 , NULL , 100 , 40);
INSERT INTO employees VALUES (123 , 'Shanta' , 'Vollman' , 'SVOLLMAN' , '650.123.4234' , '1997-10-12',  'ST_MAN' , 6500 , NULL , 100 , 50);
INSERT INTO employees VALUES (124, 'Kevin' , 'Mourgos' , 'KMOURGOS' , '650.123.5234' , '1999-11-12',  'ST_MAN' , 5800 , NULL , 100 , 80);
INSERT INTO employees VALUES (125, 'Julia' , 'Nayer' , 'JNAYER' , '650.124.1214' , '1997-07-02',  'ST_CLERK' , 3200 , NULL , 120 , 50);
INSERT INTO employees VALUES (126, 'Irene' , 'Mikkilineni' , 'IMIKKILI' , '650.124.1224' , '1998-11-12', 'ST_CLERK' , 2700 , NULL , 120 , 50);
INSERT INTO employees VALUES (127, 'James' , 'Landry' , 'JLANDRY' , '650.124.1334' , '1999-01-02' , 'ST_CLERK' , 2400 , NULL , 120 , 90);
INSERT INTO employees VALUES (128, 'Steven' , 'Markle' , 'SMARKLE' , '650.124.1434' , '2000-03-04' , 'ST_CLERK' , 2200 , NULL , 120 , 50);
INSERT INTO employees VALUES (130, 'Mozhe' , 'Atkinson' , 'MATKINSO' , '650.124.6234' , '1997-10-12' , 'ST_CLERK' , 2800 , NULL , 121 , 110);




# 1. Select employees first name, last name, job_id and salary whose first name starts with alphabet S
SELECT 
	first_name, last_name, job_id, salary
FROM
    employees
WHERE
    first_name LIKE 'S%';  # starts with the letter 'S' LIKE is used for pattern matching, % symbol represents any sequence of characters.



# 2. Write a query to select employee with the highest salary  (using an inner query)
SELECT 
	*                                               # '*' symbol represents select all     
FROM
	employees                                       # employees table
WHERE                                               # filters the rows returned by the main (outer) query where salary = maxium
	salary = ( SELECT MAX(salary) FROM employees ); # SELECT MAX(salary) function returns the maximum value of the salary column. 


    
# 3. Select employee with the second highest salary     
SELECT 
    *
FROM
    employees
ORDER BY 
	salary DESC                                     # DESC sort the result in descending order
    LIMIT 1 										# LIMIT determines how many rows to return after the offset.
    OFFSET 1;   									# OFFSET skips the specified number of rows from the beginning.
    
    

# 4. Write a query to select employees and their corresponding managers and their salaries
SELECT 
    e.Employee_id AS EmployeeID,        
    e.first_name AS EmployeeFirstName,  
    e.last_name AS EmployeeLastName,    
    e.salary AS EmployeeSalary,         
    
    (SELECT m.Employee_id  # select the Employee_id from the employees table with the alias m.
		FROM employees m   # m.Employee_id = e.manager_id retrieves the ID of the manager whose Employee_id matches the manager_id of the employee in the current row of the main query.
		WHERE m.Employee_id = e.manager_id) AS ManagerID,  # get manager's ID

    (SELECT m.first_name 
		FROM employees m 
		WHERE m.Employee_id = e.manager_id) AS ManagerFirstName, # get manager's first name

    (SELECT m.last_name 
		FROM employees m 
		WHERE m.Employee_id = e.manager_id) AS ManagerLastName, # get manager's last name

    (SELECT m.salary 
		FROM employees m 
		WHERE m.Employee_id = e.manager_id) AS ManagerSalary # get manager's salary
FROM 
    employees e
ORDER BY 
    e.Employee_id;




# 5. Write a query to select employees and their corresponding managers and their salaries (SELF Join)
SELECT 
    e.Employee_id AS EmployeeID,
    e.first_name AS EmployeeFirstName,
    e.last_name AS EmployeeLastName,
    e.salary AS EmployeeSalary,
    m.Employee_id AS ManagerID,
    m.first_name AS ManagerFirstName,
    m.last_name AS ManagerLastName,
    m.salary AS ManagerSalary
FROM 
    employees e                                 # Specify the main table and its alias 
LEFT JOIN 
    employees m ON e.manager_id = m.Employee_id # left join to link each employee to their manager using the manager_id
ORDER BY 
    e.Employee_id;                              # Then order the results by the employee's ID



# 6. Create a view for the above query
CREATE VIEW Employee_and_Managers AS
	SELECT 
		e.Employee_id AS EmployeeID,
		e.first_name AS EmployeeFirstName,
		e.last_name AS EmployeeLastName,
		e.salary AS EmployeeSalary,
		m.Employee_id AS ManagerID,
		m.first_name AS ManagerFirstName,
		m.last_name AS ManagerLastName,
		m.salary AS ManagerSalary
	FROM 
		employees e                                 # Specify the main table and its alias 
	LEFT JOIN 
		employees m ON e.manager_id = m.Employee_id # left join to link each employee to their manager using the manager_id
	ORDER BY 
		e.Employee_id;                              # Then order the results by the employee's ID


# To View the created VIEW 'Employee_and_Managers'
SELECT
	*
FROM 
	Employee_and_Managers;
        
        
        
# 7. Write a query to show the count of employees under each manager in descending order (from view)
SELECT
	ManagerId, ManagerFirstName, ManagerLastName, COUNT(EmployeeID) AS Employees
FROM
	employee_and_managers
WHERE 
	ManagerID IS NOT NULL       #THE GIVEN SAMPLE DATABASE CONTAINS EMPLOYEES HAVING NO MANAGERS SO I REMOVED IT TO BEAUTIFY  
GROUP BY    
	ManagerId
ORDER BY
	Employees DESC;	
	


# 8. Find the count of employees in each department
SELECT 
    Department_Name AS Department,                          # The column is selected from the departments table and is aliased as Department
    COUNT(employees.Employee_id) AS 'Number of Employees'   # Counts the number of employees in each department and aliased as Number of Employees
FROM                                                        # Specifies the departments table as the main table from which to select data.
    departments
LEFT JOIN 												    # LEFT JOIN ensures that all records from the departments table are included in the result,
    employees												# even if there are no matching records in the employees table.
ON 															# This condition makes the join performed where the Department_id from
    departments.Department_id = employees.department_id     # the departments table matches the department_id from the employees table.
GROUP BY 													# groups the rows by Department_Name, 
    Department_name;										# so the COUNT function calculates the number of employees in each department group.



# 9. Get the count of employees hired year wise
SELECT
	YEAR(hire_date ) AS 'year',					            # extracts the year from the hire_date column using the YEAR function and aliased as 'year' 
    COUNT(Employee_id) AS 'employees hired'					# count the number of Employee_id values in each group and aliased as 'employees hired'
FROM
	employees												# from employees table as the input data
GROUP BY 													# group the rows by the extracted year, 
	YEAR(hire_date );                                       # so the COUNT function calculate number of employees hired for each year.
	
    
    
# 10 . create a stored procedure to get the “ Get the count of employees hired in the input year”(IN year , OUT count)     
DELIMITER //                                                                    # change delimiter to //
CREATE PROCEDURE get_employee_count_by_year(IN input_year INT, OUT count INT)   # define procedure with input parameter 'input_year', output parameter 'employee_count'
BEGIN                                                                           # BEGIN ... END: is the body of the procedure 
    SELECT COUNT(*)                                                             # run the query to count the number of employees hired in the given year        
    INTO count                                                                  # and stores the result into count variable.
    FROM employees
    WHERE YEAR(hire_date) = input_year;
END //
DELIMITER ;                                                                    # change delimiter back to ;

CALL get_employee_count_by_year(1994, @employee_count);                        # call the procedure                    
SELECT                                                                         # @employee_count is session variable to hold the output of the stored procedure.
	@employee_count AS 'The count of employees hired in 1994';                 # output aliased to 'The count of employees hired in 1994'              



# 11.Select the employees whose first_name contains “an”
SELECT 
	*                                                      # select all
FROM 
	employees                                              # from employees table 
WHERE 													   # where first_name contains “an”
	first_name LIKE '%an%';                                # %an%' Filters the rows where the first_name column contains the substring "an"



# 12.  Select employee first name and the corresponding phone number in the format (_ _ _)-(_ _ _)-(_ _ _ _)
# phone_number format on employees table 515.123.4567
SELECT 
	# Selects the first_name coulum
    first_name,                    
    # SUBSTRING(data, start position, length)
    CONCAT(  '(',    SUBSTRING(phone_number,1,3),   ')-(',   SUBSTRING(phone_number,5,3),    ')-(',   SUBSTRING(phone_number,9,4),   ')')    AS 'phone number'                                      
FROM 
    employees;



# 13. Find the employees who joined in August, 1994.        
SELECT
	*                                                      # select all from employees table
FROM
    employees
WHERE                                                      # where both matched (YEAR(hire_date) = 1994 AND MONTH(hire_date) = 8;)
    YEAR(hire_date) = 1994 AND MONTH(hire_date) = 8;


    
# 14. Find the maximum salary from each department.
SELECT
	e.department_id AS 'Department ID', d.Department_name AS 'Department', MAX(salary) AS 'Maximum salary'
FROM
	employees e
JOIN                                                     # join employees table (e) and the departments table (d). 
	departments d ON e.department_id = d.Department_id   # ON where the department_id in employees matches the Department_id in departments table 
GROUP BY
	e.department_id;
    
    
    
# 15. Write a SQL query to display the 5 least earning employees  
SELECT
	*
FROM
	employees
ORDER BY
	salary LIMIT 5;
    	

  
# 16. Find the employees hired in the 80s
SELECT
	*
FROM
	employees
WHERE                                                     
    YEAR(hire_date) >= 1980 AND YEAR(hire_date) < 1990;  
    
    
	
# 17. Find the employees who joined the company after 15th of the month     
SELECT 
	*
FROM
	employees
WHERE 
   DAY(hire_date) > 15;    
        