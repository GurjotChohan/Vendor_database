##1) Return the ID and Name of interviewers who participate in interviews where the interviewee’s name is “Hellen Cole” arranged for job “11111”.

Select DISTINCT INTERVIEW_CONDUCTED.EMP_ID, PERSON.FNAME AS INTERVIEWER_FIRST_NAME, PERSON.LNAME AS INTERVIEWER_LAST_NAME FROM INTERVIEW_CONDUCTED, PERSON
Where interview_ID IN
	(Select 	Interview.interview_id
From 	Interview, Person
Where 	Interview.Job_ID = 11111 AND 
		Person.Fname = "Hellen" AND 
		Person.Lname = "Cole" AND 
        Interview.Interviewee = Person.personal_ID) AND PERSON.PERSONAL_ID = INTERVIEW_CONDUCTED.EMP_ID; 
        


##		2) Return the ID of all jobs which are posted by department “Marketing” in January 2011.

Select 	job_ID, JOB_DESC
From 	JOB_POSTING, department
WHERE 	department.dept_name = "Marketing" AND 
		JOB_POSTING.DEPT_ID = department.DEPT_ID AND 
		MONTH(JOB_POSTING.POSTED_DATE) = 1 AND 
        YEAR(JOB_POSTING.POSTED_DATE) = 2011; 
        
##		3) Return the ID and Name of the employees having no supervisees.

SELECT E.EMP_ID, P.FNAME, P.LNAME FROM employee E, PERSON P
WHERE E.EMP_ID  NOT IN (
Select distinct SUPER_ID
from employee WHERE SUPER_ID IS NOT NULL) AND E.EMP_ID  = P.PERSONAL_ID; 

##		4) Return the Id and Location of the marketing sites which have no sale records during March, 2011.

SELECT 	SITE_ID FROM MARKETING_SITES 
WHERE 	SITE_ID NOT IN (SELECT SITE_ID 
						FROM INVOICE_RECORD 
						WHERE MONTH(INVOICE_RECORD.SALE_TIME) = 3 AND 
						YEAR(INVOICE_RECORD.SALE_TIME) = 2011); 
        
##		5) Return the job’s id and description which does not hire a suitable person one month after it is posted.

Select * from job_posting where NOT job_ID  IN (Select B.Job_ID
From (Select A.FIRST_NAME, A.LAST_NAME, A.JOB_ID, A.ROUNDS_PASSED, A.AVG_SCORE, A.PERSONAL_ID, (A.LAST_INTERVIEW - JP.POSTED_DATE) AS DAYS_PAST  
		from (SELECT * 	FROM project.candiate_selection_view 
				where rounds_passed > 5 AND AVG_Score > 70) AS A, JOB_POSTING JP 
		where A.JOB_ID= JP.JOB_ID) AS B
        Where B.days_past < 30); 


##		6) Return the ID and Name of the salesmen who have sold all product type whose price is above $200.

Select P.Fname, P.Lname, P.Personal_ID
from (Select count(A.P_ID) AS total_sold, A.ID AS Person_ID	from (Select Distinct invoice_record.emp_ID AS ID, invoice_line.P_ID AS P_ID
						from invoice_line, invoice_record 
						where P_ID IN (Select 	P_ID 
												from product 
												where list_price > 200)) AS A
			group by A.ID) Total_expensive_sales, Person p 
Where Total_expensive_sales.total_sold IN (Select count(P_ID) from product where list_price > 200) AND P.Personal_ID = Total_expensive_sales.Person_ID; 
			

##		7) Return the department’s id and name which has no job post during 1/1/2011 and 2/1/2011.

SELECT 	DEPT_ID, dept_name FROM department 
WHERE 	DEPT_ID NOT IN (SELECT DEPT_ID 
						FROM JOB_POSTING 
						WHERE MONTH((JOB_POSTING.posted_date) = 1 AND 
						YEAR(JOB_POSTING.posted_date) = 2011) OR (JOB_POSTING.posted_date) = "2011-02-01"); 
                        
##		8) Return the ID, Name, and Department ID of the existing employees who apply job “12345”.

select MAX(WR.start_time) AS most_recent_start_date, WR.EMP_ID As ID, WR.DEPT_ID As Current_department
from works_for WR
where WR.end_time is null AND WR.EMP_ID IN (Select P_EMP_ID from applicants where job_ID = 12345 AND P_EMP_ID IN (select EMP_ID from employee))
Group by WR.EMP_ID, WR.DEPT_ID;


##		9) Return the best seller’s type in the company (sold the most items).

SELECT *
  FROM products_sold
  WHERE Total_sold = (SELECT MAX(Total_sold) FROM products_sold); 
  
# 10) Return the product type whose net profit is highest in the company (money earned minus the part cost).

Select MAX(product.List_Price - product_internal_cost.cost) AS Profit, product.P_ID  
From product_internal_cost, product 
where product.P_ID = product_internal_cost.p_id
Group By product.P_ID 
ORDER BY profit desc
Limit 1;  

# 11) Return the name and id of the employees who has worked in all departments after hired by the company.
Select  B.ID, P.Fname, P.Lname
From 	(Select count(dept_ID) AS total_dept_worked_for, A.emp_id AS ID 
		FROM (Select	Distinct dept_ID, emp_id 
						from Works_for) AS A 
		group by A.emp_id) AS B, person as P
where B.total_dept_worked_for IN (SELECT COUNT(dept_id) FROM department) AND B.ID = P.Personal_ID; 

# 12) Return the name and email address of the interviewee who is selected. ## DONE
Select Distinct CA.First_name, CA.Last_name, CA.personal_id, P.email
from candiate_selection_view AS CA, person AS P, addresses AS A
where Rounds_passed >= 5 AND Avg_score >= 70 and P.personal_id = CA.personal_id; 

# 13) Retrieve the name, phone number, email address of the interviewees selected for all the jobs they apply.


Select P.FName, P.Lname, P.email
From (Select count(A.Job_ID) AS int_count,  A.personal_id AS ID from 
(Select Distinct CA.First_name, CA.Last_name, CA.personal_id, P.email, CA.job_ID
from candiate_selection_view AS CA, person AS P, addresses AS A
where Rounds_passed >= 5 AND Avg_score >= 70 and P.personal_id = CA.personal_id) A 
group by A.personal_id) AS PASSEDINTERVIEWCOUNT, person as P
where PASSEDINTERVIEWCOUNT.int_count IN (SELECT COUNT(JOB_ID) FROM Applicants group by P_EMP_ID) AND PASSEDINTERVIEWCOUNT.ID =  P.Personal_ID; 

# 14) Return the employee’s name and id whose average monthly salary is highest in the company.
SELECT *
  FROM emp_avg_salary
  WHERE Monthly_Salary = (SELECT MIN(Monthly_Salary) FROM emp_avg_salary); 

# 15) Return the ID and Name of the vendor who supply part whose name is “Cup” and weight is smaller than 4 pound and the price is lowest among all vendors.

Select distinct V.Vendor_ID, V.Vendor_Name, P.Part_price from Parts as P, Vendor as V where P.Part_type = "Cup" AND P.weight <=4 AND V.Vendor_ID = P.Vendor_ID
order by P.Part_price asc Limit 1; 
