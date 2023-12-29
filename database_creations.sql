3use project;

create table person
(
	Personal_ID int not null,
    Age int, 
    Fname varchar(200),
    Lname varchar(200), 
    Gender char(1),
    constraint PK_person primary key (Personal_ID)
);


create table addresses
(
	Address_type  char(1), CHECK (Address_type = 'B' Or Address_type = 'M' Or Address_type = 'P'), 
	Line1 varchar(200) not null, 
	Line2 varchar(200),
	City varchar(50),
	State varchar(50),
    ZipCode varchar(10),
	Personal_ID int not null, 
	constraint PK_addr primary key (Personal_ID, Address_type), 
	constraint FK_addr foreign key (Personal_ID) references Person(Personal_ID) on update cascade on delete cascade
); 
create table department
(
	DEPT_ID				int not null,
	DEPT_NAME 			varchar(25),
	constraint PK_dept primary key(DEPT_ID)
);

create table employee 
(
	TITLE varchar(30),
    EMP_RANK varchar(30),
    EMP_ID int not null,
    SUPER_ID int,
    constraint PK_emp primary key (EMP_ID), 
    constraint FK_emp_ID foreign key (EMP_ID) references Person(Personal_ID) on update cascade on delete restrict,
    constraint FK_emp_SuperID foreign key (Super_ID) references employee(EMP_ID) on update cascade on delete restrict
);

create table PHONE_RECORD
(
	Personal_ID int not null,
    PH_NUM  varchar(10),
    constraint PK_phone primary key (Personal_ID, PH_NUM),
    constraint FK_phone foreign key (Personal_ID) references Person(Personal_ID) on update cascade on delete cascade
);

create table POTENTIAL_EMP 
(
	P_EMP_ID int not null,
    constraint PK_P_EMP primary key (P_EMP_ID),
    constraint FK_P_EMP foreign key (P_EMP_ID) references person(Personal_ID) on update cascade on delete cascade
);

create table CUSTOMER 
(
	CUST_ID int not null,
    PREF_SALESPERSON varchar (200),
	constraint PK_CUST primary key (CUST_ID),
    constraint FK_CUST foreign key (CUST_ID) references person(Personal_ID) on update cascade on delete restrict
);

create table PAYROLL 
(
	EMP_ID int not null ,
    AMOUNT int,
    TRANS_ID int,
    PAY_DATE DATE,
    constraint PK_payroll primary key (EMP_ID,TRANS_ID ),
    constraint FK_payroll foreign key (EMP_ID) references employee(EMP_ID) on update cascade on delete cascade
);

create table WORKS_FOR 
(
	DEPT_ID int,
    EMP_ID int not null,
    START_TIME DATE,
    END_TIME DATE,
    
    constraint PK_works_for primary key (DEPT_ID,EMP_ID),
    constraint FK_works_for_dept foreign key (DEPT_ID) references department(DEPT_ID) on update cascade on delete cascade,
    constraint FK_works_for_emp foreign key (EMP_ID) references employee(EMP_ID) on update cascade on delete cascade
);

create table MARKETING_SITES 
(
	SITE_ID int not null,
    PHYS_LOCATION varchar (200),
    ONLINE_URL varchar (200), 
    SITENAME varchar (50), 
    constraint PK_MARKETING_SITES primary key (SITE_ID)
);

create table WORKS_AT 
(
	EMP_ID int not null,
    SITE_ID int,
    HOURS int, 
	constraint PK_works_at primary key (EMP_ID,SITE_ID),
    constraint FK_works_at_site foreign key (SITE_ID) references MARKETING_SITES (SITE_ID) on update cascade on delete cascade,
    constraint FK_works_at_emp foreign key (EMP_ID) references employee(EMP_ID) on update cascade on delete cascade
);

create table PRODUCT 
(
	P_ID int not null,
    P_TYPE varchar(30),
    SIZE varchar(20), 
    WEIGHT int , 
    LIST_PRICE int, 
    STYLE varchar(20),
    constraint PRODUCT primary key (P_ID)
);

create table VENDOR
(
	VENDOR_ID int,
    WEB_URL varchar (200), 
    CREDIT int, 
    Vendor_NAME varchar (200), 
    ADDRESS varchar (200), 
	constraint PK_vendor primary key (VENDOR_ID)
);
     
create table PARTS
(
	PART_ID int,
    PART_TYPE  varchar(30),
    VENDOR_ID int, 
    PART_PRICE int, 
    constraint PK_parts primary key(part_type, vendor_ID),
    constraint FK_parts foreign key (VENDOR_ID) references vendor(VENDOR_ID) on update cascade on delete restrict
);

create table INVOICE_RECORD
(
	SALE_ID int,
    CUST_ID int,
    SITE_ID int, 
    SALE_TIME Date, 
    EMP_ID int, 
    constraint PK_inv_rec primary key(sale_ID, Site_ID),
    constraint FK_inv_rec_site foreign key (SITE_ID) references MARKETING_SITES(SITE_ID) on update cascade on delete cascade,
    constraint FK_inv_rec_cust foreign key (CUST_ID) references customer(CUST_ID) on update cascade on delete set null,
    constraint FK_inv_rec_emp foreign key (EMP_ID) references employee(EMP_ID) on update cascade on delete set null
);

create table JOB_POSTING
(
	JOB_DESC varchar (30),
    POSTED_DATE date,
    JOB_ID int, 
    DEPT_ID int, 
    constraint PK_job_post primary key(job_ID),
    constraint FK_job_post foreign key (DEPT_ID) references department(DEPT_ID) on update cascade on delete set null
);

create table INTERVIEW
(
	JOB_ID int,
    INTERVIEW_ID int,
    INTERVIEWEE int,
    constraint PK_interview primary key(INTERVIEW_ID),
    constraint FK_interview foreign key (JOB_ID) references job_posting(JOB_ID) on update cascade on delete restrict,
    constraint FK_interview_cand foreign key (INTERVIEWEE) references POTENTIAL_EMP(P_EMP_ID) on update cascade on delete restrict 
);

create table INVOICE_LINE
(
	LINE_NUM int,
    SALE_ID int,
    SITE_ID int,
    P_ID int, 
    LINE_PRICE int, 
    LINE_UNITS int, 
    
    constraint PK_invoiceLine primary key(LINE_NUM, SALE_ID, SITE_ID),
    constraint FK_invoiceLine_Pid foreign key (P_ID) references product(P_ID) on update cascade on delete restrict,
    constraint FK_invoiceLine foreign key (SALE_ID, SITE_ID) references INVOICE_RECORD(SALE_ID, SITE_ID) on update cascade on delete restrict; 
);



create table INTERVIEW_ROUNDS
(
	ROUND_NUM int,
    INTERVIEW_TIME date,
    SCORE int,
    INTERVIEW_ID int, 
    
    constraint PK_INTERVIEW_ROUNDS primary key(ROUND_NUM, INTERVIEW_ID),
    constraint FK_INTERVIEW_ROUNDS foreign key (INTERVIEW_ID) references INTERVIEW (INTERVIEW_ID) on update cascade on delete restrict
);

create table APPLICANTS
(
	JOB_ID int,
    P_EMP_ID int not null,
    
    constraint PK_APPLICANTS primary key(JOB_ID, P_EMP_ID),
    constraint FK_APPLICANTS foreign key (JOB_ID) references JOB_POSTING(JOB_ID) on update cascade on delete restrict
);

create table PARTS_USED
(
	P_ID int,
    PART_TYPE varchar(30),
    VENDOR_ID int, 
    TOTAL_USED int, 
    
    constraint PK_partsused primary key(VENDOR_ID, PART_TYPE, P_ID),
    constraint FK_partsused1 foreign key (VENDOR_ID) references VENDOR(VENDOR_ID) on update cascade on delete restrict,
    constraint FK_partsused2 foreign key (PART_TYPE) references PARTS(PART_TYPE) on update cascade on delete restrict,
    constraint FK_partsused3 foreign key (P_ID) references PRODUCT(P_ID) on update cascade on delete restrict
);

create table INTERVIEW_CONDUCTED
(
	INTERVIEW_ID INT,
    ROUND_NUM INT,
    EMP_ID int not null, 
    constraint PK_INTERVIEW_COND primary key(INTERVIEW_ID, ROUND_NUM, EMP_ID),
    constraint FK_INTERVIEW_COND1 foreign key (INTERVIEW_ID) references INTERVIEW_ROUNDS(INTERVIEW_ID) on update cascade on delete restrict,
    constraint FK_INTERVIEW_COND2 foreign key (ROUND_NUM) references INTERVIEW_ROUNDS(ROUND_NUM) on update cascade on delete restrict,
    constraint FK_INTERVIEW_COND3 foreign key (EMP_ID) references employee(EMP_ID) on update cascade on delete restrict
);
