# Retail Company database

**Brief Description**
This database is for a fictitious retail company that procures components from vendors to manufacture products. The company encompasses various departments, marketing sites, and suppliers of parts in its operations.

**Business Rules**

1. Record the department ID and department name for each department.

2. Categorize individuals in the company into three types—employees, customers, and potential employees. Each person may belong to multiple types. Capture the following attributes for each person: Personal_ID, Name (Last Name, First Name), Age (below 65), Gender, Address (address line 1, address line 2, city, state, zipcode), and Phone number (individuals may have multiple phone numbers). For customers, record their preferred salesmen. For employees, note their Rank and Title (e.g., CEO, Principal, Partner).

3. Document the start time and end time for each shift across different departments for each employee.

4. Record information for each job position to facilitate hiring. Include Job ID, job description, and the posted date.

5. Departments are responsible for posting job positions. Both existing employees and potential employees can apply for any job post. The company selects candidates from the applications and conducts interviews.

6. Conduct several interviews for each job position to choose a suitable candidate.

7. For each interview, record candidates (interviewees), interviewers, job position, and interview time. After each round of interviews, interviewers assign a grade ranging from 0 to 100. A grade over 60 indicates a passing interview. Selection occurs when an individual's average grade is over 70, and they pass at least 5 rounds of interviews.

8. For each product in the company, record Product ID, Product Type, Size, List Price, Weight, and Style.

9. Record information for each marketing site, including Site ID, Site Name, and Site Location.

10. Multiple individuals work for each site, and one person can work on different sites. Track details of each sale history, including salesmen, customers, product, sale time, and sites.

11. Record information for each vendor involved in part purchases. Include Vendor ID, Name, Address, Account Number, Credit Rating, and Purchasing Web Service URL.

12. Track parts supplied by vendors. The price of the same part type may vary among vendors, but it remains consistent for one vendor. Record which part types are used in each product and the quantity of each type of part used.

13. Maintain information on each employee's monthly salary, including transaction number, pay_date, and amount. Note that the transaction number may be the same for different employees, but it is unique for each employee.

14. A company must have an addressee and phone number on record for employee and potential employee.

15. A person (employee, potential employee, customer) may have more than one address on file. Physical address and/or mailing address.

16. Except for the CEO of the company, every employee must have a direct supervisor. (in the EER the supervision relationship is shown as partial because of this)

17. Each interview is conducted by one or more employees.
 
    i. The interviewers for each round of the interview may differ.

18. A marketing site may have an online store in addition to the IRL location.

19. Each sale record pertains to a transaction that happened at a particular marketing location. The transaction may contain multiple products.

20. Many vendors can not supply the same parts or one part can not be supplied by many vendors — adding on to the rule that “One vendor may supply many types of parts”.

21. A product may use many parts and a part may be used in many different products.

22. For each interview a interview# is recorded that uniquely identifies job_postion and candidate.

23. Number of hours an employee has worked at a marketing site must be recorded.

**EER Diagram**

![image](https://github.com/GurjotChohan/Vendor_database/assets/112025372/8de94f7e-6249-446b-be3b-da75029876f6)


**Schema Diagram**

![image](https://github.com/GurjotChohan/Vendor_database/assets/112025372/852c3d9c-1eb9-4892-ad4f-3773dd5a8fb9)

