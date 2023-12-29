##	View1: This view returns the average salary each employee has earned from the company monthly after she/he becomes an employee in the company.

CREATE VIEW Emp_Avg_Salary AS
select avg(p.amount) as Monthly_Salary, person.Fname As First_Name, Person.Lname as Last_Name
from payroll as p, person
where person.personal_ID = p.EMP_ID
Group by EMP_ID; 

##	View2: This view returns the number of interviews rounds each interviewee pass for each job position.

CREATE VIEW ROUNDS_PASSED AS 
Select P.Personal_id, I.interview_id, I.job_ID, P.Fname As First_Name, P.Lname as Last_Name, IFNULL(Passed_count, 0) AS ROUNDS_PASSED
FROM  person P, interview I
Left  Join
(select count(IR.interview_id) AS Passed_count, IR.interview_id
from interview_rounds IR
where score >= 60 
Group by IR.interview_id) A ON A.interview_id = I.interview_id
where P.personal_ID = I.interviewee
order by I.job_ID;

Drop view ROUNDS_PASSED; 
 
##	View3: This view returns the number of items of each product type sold.
CREATE VIEW PRODUCTS_SOLD AS 
SELECT P_Type AS Product, IFNULL(Amount_Sold, 0) AS Total_Sold FROM Product P 
LEFT JOIN ((Select sum(invoice_line.Line_units) AS Amount_Sold, invoice_line.P_ID AS product_ID
From invoice_line
Group by invoice_line.P_ID)) A 
ON A.product_ID = P.P_ID; 

##	View4: This view returns the part purchase cost for each product.
CREATE VIEW PRODUCT_INTERNAL_COST AS 
SELECT SUM(p.part_price * p_t.total_used) AS cost, p_t.p_id
FROM parts p
    INNER JOIN parts_used p_t
        ON p.part_type = p_t.part_type AND  p.vendor_ID = p_t.vendor_ID
group by p_t.p_id; 


### Extra views to help with other queries
Create view Candiate_selection_view AS 
select RA.Personal_id, RA.interview_ID, RA.job_ID, RA.First_name, RA.Last_name, RA.Rounds_passed, A.Avg_score, A.last_interview
from (rounds_passed as RA)
Inner Join (select AVG(IR.score) AS Avg_score,  MAX(IR.interview_time) AS last_interview, IR.interview_id
from interview_rounds IR
Group by IR.interview_id) A on A.interview_id = RA.interview_id;
