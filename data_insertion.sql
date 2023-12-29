use project; 
select * from person; 
INSERT INTO person (personal_ID, Age, Fname, Lname, Gender, email)
VALUES 	(001, 21, "Jane", "Smith", 'F', "jsmith@gmail.com"), 
		(002, 34, "John", "Pal", 'M', "jpal@gmail.com"), 
        (003, 21, "Jake", "Das", 'F', "jdas@gmail.com"), 
        (004, 21, "jill", "Majumdar", 'F', "jmajumdar@gmail.com"), 
        (005, 21, "phill", "Valledor", 'M', "PValledor@gmail.com"), 
        (006, 31, "rea", "ring", 'F', "rearing@gmail.com"), 
        (007, 21, "john", "king", 'M', "johnking@gmail.com"), 
        (008, 41, "jason", "chohan", 'M', "jasonchohan@gmail.com"), 
        (009, 21, "harry", "tao", 'M', "harrytao@gmail.com"), 
        (010, 43, "noah", "Freeman", 'F', "noahfreeman@gmail.com"), 
        (011, 35, "Matt", "Doe", 'M', "mattdoe@gmail.com"), 
        (012, 35, "kat", "Gold", 'F', "katgold@gmail.com"), 
        (013, 45, "jae", "white", 'F', "jaewhite@gmail.com"), 
        (014, 35, "aman", "khan", 'F', "aman092@gmail.com"), 
        (015, 35, "abi", "park", 'F', "abi30925@gmail.com"), 
        (016, 35, "sophia", "smith", 'F', "sophia82357@gmail.com"), 
        (017, 21, "tom", "johnson", 'M', "tom37256@gmail.com"), 
        (018, 21, "luke", "Vue", 'M', "luck35847@gmail.com"), 
        (019, 21, "breanna", "Gi", 'F', "bbb7358@gmail.com"), 
        (020, 21, "lao", "smith", 'M', "laosmith@gmail.com"), 
        (021, 43, "tao", "miller", 'F', "taomiller@gmail.com"), 
        (022, 35, "kia", "smith", 'M', "kiasmith@gmail.com"), 
        (023, 35, "tom", "jones", 'F', "tomjonesd@gmail.com"), 
        (024, 45, "rom", "miller", 'F', "rommiller@gmail.com"), 
        (025, 35, "pam", "Lee", 'F', "pamLee@gmail.com"), 
        (026, 35, "leana", "Wang", 'F', "lean24223@gmail.com"), 
        (027, 35, "lina", "Hernandez", 'F', "lina2434@gmail.com"), 
        (028, 21, "bre", "johnson", 'M', "bre1240256@gmail.com"), 
        (029, 21, "moon", "smirnov", 'M', "moon35847@gmail.com"), 
        (030, 21, "sun", "patel", 'F', "sunpatel358@gmail.com") ;
        
INSERT INTO addresses Values
		("B", 	"654 Belmont Avenue", 			null, 		"Kahului", 			"Hawaii", 			85095, 001),
		("B", 	"95555 Park Place"	, 			null,		"Schenley", 		"Pennsylvania",	 	38465, 002), 
		("P",	"88 Route 30", 					null,		"Painted Post",		"New York", 		43524, 003),
		("B",	"1805 Green Street"	, 			null,		"Meriden",			"Wyoming", 			43532, 004),
		("P",	"653 Jackson Street",			null,		"Harford",			"Pennsylvania",		45344, 005),
		("M",	"83 Spruce Street"	, 			null,		"Splendora",			"Texas", 		45135, 005),	
		("P",	"3213 4th Street No",			null,		"Hubbardston",		"Massachusetts",	43514, 006),
		("M", 	"13 2nd Avenue"		, 			null,		"Staten Island",		"New York", 	34542, 006), 
		("P",	"55 Hillside Drive",			"Apt 232",	"Hartly",			"Delaware", 		45245, 007),
		("M", 	"54 Laurel Lane" , 				null,		"Orchard",			"Iowa", 			45235, 007),
		("B",	"521 Broad Street"	, 			null,		"Pontotoc",			"Mississippi", 		45235, 008),
		("B", 	"88631 Meadow Lane"	, 			null,		"Las Cruces",		"New Mexico", 		45325, 009),
		("B",	"43425 Franklin Avenue",		null,		"Grant"		,		"Alabama", 			34534, 010),
		("B", 	"26592 Route 30",				"Apt 1915", "Weston"	,		"Missouri", 		43245, 011),
		("B", 	"54790 Locust Street",			"Apt 136",	"Wilmington",		"Ohio",				54534, 012),
		("B", 	"619 Pine Street",				null,	 	"Zillah"	,		"Washington", 		45234, 013),
		("B", 	"6818 Oak Street"	, 			null,		"East Rutherford",	"New Jersey", 		45325, 014),
		("B", 	"28433 Clinton Street"	, 		null,		"Clovis",			"New Mexico", 		63556, 015),
		("B", 	"4615 Franklin Street",			"Unit 21", 	"Adamsville", 		"Rhode Island", 	45656, 016),
		("P", 	"64 Willow Street",		 		null, 		"Miramonte",		"California", 		46456, 017),
		("M", 	"95740 Cambridge Drive"	, 		null,		"McKnightstown",	"Pennsylvania", 	64456, 017),
		("B", 	"4559 Court Street"	, 			null,		"Prospect Hill",	"North Carolina",	46645, 018),
		("M", 	"1298 4th Street West"	, 		null,		"Indianapolis", 	"Indiana", 			36465, 019),
		("P", 	"2 Warren Street"		,		null,		"Federal Way", 		"Washington", 		24354, 019); 
        
INSERT INTO DEPARTMENT VALUES
		(101, "Marketing"), 
        (102, "Accounting"), 
        (103, "HR"), 
        (104, "Executive"),
        (105, "Legal"), 
        (106, "Sales"), 
        (107, "R&D"), 
        (108, "IT"),
        (109, "Operarations"), 
        (110, "Management"), 
        (111, "Finace"); 
        
Insert Into Employee Values
		("CEO", "C-Level", 001, null), 
        ("Sales Director", "Director", 004, 001),   		
        ("CFO", "C-Level", 009, 001), 
        ("Sales Manager", "Manager", 003, 004), 
		("Sales Assocaite", "Entry_level", 002, 003), 
		("Accounting Director", "Director", 012, 009), 
		("Accounting Manager", "Manager", 011, 012), 
		("Accounting Assocaite", "Entry_level", 010, 011), 
		("Sales Assocaite II", "Entry_level", 016, 003),
		("Sales Assocaite III", "Entry_level", 017, 003), 
		("Sales Assocaite IV", "Entry_level", 018, 003), 
		("Sales Assocaite V", "Entry_level", 019, 003); 
        
Insert Into payroll values
		(001, 50000, 001 ,'2011-09-01'), (001, 50000, 002 ,'2011-10-01'), (001, 50000, 003 ,'2011-11-01'), (001, 50000, 004 ,'2011-12-01'), 
		(002, 4000, 001 ,'2011-09-01'), (002, 3900, 002 ,'2011-10-01'), (002, 4100, 003 ,'2011-11-01'), (002, 4200, 004 ,'2011-12-01'), 
		(003, 6000, 001 ,'2011-09-01'), (003, 5900, 002 ,'2011-10-01'), (003, 6100, 003 ,'2011-11-01'), (003, 6500, 004 ,'2011-12-01'), 
		(004, 15000, 001 ,'2011-09-01'), (004, 15000, 002 ,'2011-10-01'), (004, 15000, 003 ,'2011-11-01'), (004, 15000, 004 ,'2011-12-01'), 
		(009, 25000, 001 ,'2011-09-01'), (009, 25000, 002 ,'2011-10-01'), (009, 25000, 003 ,'2011-11-01'), (009, 25000, 004 ,'2011-12-01'), 		 
		(010, 5000, 001 ,'2011-09-01'), (010, 5100, 002 ,'2011-10-01'), (010, 5200, 003 ,'2011-11-01'), (010, 5100, 004 ,'2011-12-01'), 
		(011, 6001, 001 ,'2011-09-01'), (011, 6500, 002 ,'2011-10-01'), (011, 6700, 003 ,'2011-11-01'), (011, 5900, 004 ,'2011-12-01'), 
        (012, 16000, 001 ,'2011-09-01'), (012, 16500, 002 ,'2011-10-01'), (012, 16700, 003 ,'2011-11-01'), (012, 15900, 004 ,'2011-12-01'), 
        (016, 4000, 001 ,'2011-09-01'), (016, 4000, 002 ,'2011-10-01'), (016, 4000, 003 ,'2011-11-01'), (016, 4000, 004 ,'2011-12-01'), 
        (017, 3900, 001 ,'2011-09-01'), (017, 4000, 002 ,'2011-10-01'), (017, 4000, 003 ,'2011-11-01'), (017, 4000, 004 ,'2011-12-01'), 
        (018, 4000, 001 ,'2011-09-01'), (018, 4001, 002 ,'2011-10-01'), (018, 4200, 003 ,'2011-11-01'), (018, 4050, 004 ,'2011-12-01'), 
        (019, 4150, 001 ,'2011-09-01'), (019, 4900, 002 ,'2011-10-01'), (019, 4105, 003 ,'2011-11-01'), (019, 3900, 004 ,'2011-12-01');  
        
Insert into Works_For values
		(101, 001, '2011-10-01', '2011-11-01'), 
        (106, 002, '2011-10-01', null), 
        (106, 003, '2011-10-01', null), 
        (106, 004, '2011-10-01', null), 
        (111, 009, '2011-01-01', null),
        (102, 001, '2011-12-01', '2011-12-31'), 
		(103, 001, '2011-01-01', '2011-02-01'), 
        (104, 001, '2011-02-01', '2011-03-01'), 
		(105, 001, '2011-04-01', '2011-05-01'), 
        (106, 001, '2011-06-01', '2011-07-01'), 
		(107, 001, '2011-08-01', '2011-09-01'), 
        (108, 001, '2011-09-01', '2011-10-01'), 
        (109, 001, '2011-03-01', '2011-04-01'),
        (110, 001, '2011-05-01', '2011-06-01'),
        (111, 001, '2011-07-01', '2011-08-01'); 

        
Insert Into Potential_emp Values
		(002), (004), (006), (008), (010), (012), (014),(016), (018), (020), (021), (022), (023), (024), (025), (026),(027), 
		(028), (029), (030);

Insert Into customer Values
		( 003, null), ( 004, null), ( 007, null), ( 008, null), ( 011, 002), ( 012, 019), ( 015, 018), ( 016, 017), ( 019, 002); 

Insert into job_posting Values
		("SALES INTERN", "2011-01-01", 1001, 103),
		("ACCT INTERN", "2011-02-24", 1002, 108), 
		("LEGAL ASSOCIATE", "2011-03-19", 1003, 105), 
		("R&D INTERN", "2011-01-19", 1004, 107), 
		("FINACAL OFFICER", "2011-05-21", 1005, 111),
		("LEGAL DIRECTOR", "2011-06-12", 1006, 105); 
        
Insert into Applicants Values
		(1001, 002), (1002, 004), (1003, 006), (1004, 006), (1005, 008), (1006, 010), (1001, 012), (1002, 014), (1003, 016), 
		(1004, 018), (1005, 002), (1006, 004), (1001, 020), (1002, 021), (1003, 022), (1004, 023),(1005, 024), (1006, 025), 
		(1001, 026), (1002, 027), (1003, 028), (1004, 029),(1005, 030), (1006, 022); 
        
        commit; 
Insert into Interview (Job_ID, Interviewee, interview_id) Values
		(1001, 002, 5001), (1003, 006, 5002),  (1006, 010, 5003),  (1002, 014, 5004), 
		(1005, 002, 5005), (1001, 020, 5006), (1002, 021, 5007), (1006, 025, 5008), 
		(1001, 026, 5009), (1003, 028, 5010), (1004, 029, 5011),(1005, 030, 5012), (1006, 022, 5013);
        
Insert into Interview_Rounds Values
		(1, "2011-01-03", 75, 5001), (2, "2011-01-04", 50, 5001),  (3, "2011-01-05", 70, 5001), 
        (1, "2011-01-03", 75, 5006), (2, "2011-01-04", 75, 5006), (3, "2011-01-05", 75, 5006), 
		(1, "2011-01-03", 70, 5009), (2, "2011-01-04", 80, 5009), (3, "2011-01-05", 90, 5009),
        
        (1, "2011-03-01", 20, 5004), 
        (1, "2011-03-01", 60, 5007), (2, "2011-03-10", 50, 5007),
        
        (1, "2011-03-21", 60, 5002), (2, "2011-03-23", 75, 5002), (3, "2011-03-25", 80, 5002), (4, "2011-03-30", 70, 5002), 
		(1, "2011-03-21", 70, 5010), (2, "2011-03-23", 70, 5010), (3, "2011-03-25", 65, 5010), (4, "2011-03-30", 85, 5010),
        
		(1, "2011-01-25", 80, 5011), (2, "2011-03-27", 80, 5011),
        
        (1, "2011-05-22", 60, 5012), (2, "2011-05-25", 75, 5012), (3, "2011-05-27", 80, 5012), (4, "2011-05-30", 70, 5012), 
		(1, "2011-05-22", 70, 5005), (2, "2011-05-25", 70, 5005), (3, "2011-05-27", 65, 5005), (4, "2011-05-30", 85, 5005),
        
		(1, "2011-06-15", 75, 5013), (2, "2011-06-19", 50, 5013), 
        (1, "2011-06-15", 75, 5003), (2, "2011-06-19", 75, 5003), 
        (1, "2011-06-15", 90, 5008), (2, "2011-06-19", 90, 5008); 
        
Insert into interview_conducted Values
		(5001, 1, 003), (5001, 2, 003), (5001, 2, 004), (5001, 3, 001), (5001, 3, 004), 
		(5006, 1, 004), (5006, 2, 003), (5006, 2, 004), (5006, 3, 001), (5006, 3, 004), 
		(5009, 1, 003), (5009, 2, 003), (5009, 2, 004), (5009, 3, 001), (5009, 3, 004), 
		
		(5004, 1, 011), (5004, 1, 010), 
		(5007, 1, 011), (5007, 1, 010), (5007, 2, 011), (5007, 2, 012),
        
        (5002, 1, 003), (5002, 2, 012), (5002, 3, 009), (5002, 4, 001),
        (5010, 1, 003), (5010, 2, 012), (5010, 3, 009), (5010, 4, 001),
        
        (5011, 1, 004), (5011, 2, 012), 
        
        (5012, 1, 010), (5012, 1, 011), (5012, 2, 011), (5012, 2, 012), (5012, 3, 011), (5012, 3, 012), (5012, 3, 009), (5012, 4, 009),
        (5005, 1, 010), (5005, 1, 011), (5005, 2, 011), (5005, 2, 012), (5005, 3, 011), (5005, 3, 012), (5005, 3, 009), (5005, 4, 009),
        
        (5013, 1, 001),   (5013, 2, 009),
        (5003, 1, 009),   (5003, 2, 001),
        (5008, 1, 001),   (5008, 2, 009); 
        

Insert into vendor values
		(70001, "vendor1.com", 700, "Vendor1_LLC", "8819 Big Rock Cove Street, Rolling Meadows, IL 60008"), 
		(70002, "vendor2.com", 800, "Vednor2_LLC", "85 Paris Hill Lane Lake In The Hills, IL 60156"), 
		(70004, "vendor3.com", 900, "Vendor3_LLC", "8173 SE. Penn Street, New Baltimore, MI 48047"), 
		(70005, "vendor4.com", 400, "Vendor4_LLC", "7 South Kingston Dr., Santa Cruz, CA 95060"), 
		(70006, "vendor5.com", 500, "Vendor5_LCC", "8304 Summerhouse St. Hilliard, OH 43026"); 
    

Insert into parts values
		(1234, "Cup", 70001, 10), 
		(1234, "Cup", 70002, 20), 
		(1234, "Cup", 70004, 40), 
		(1235, "sliverware", 70001, 1), 
		(1253, "sliverware", 70002, 2),
        (1237, "Plate", 70001, 5); 
    
    
Insert into product values
		(1, "Dinnerware", "Regular", 20, 50, "Gold-White"), 
		(2, "Bedding set", "Queen", 20, 70, "Modern"), 
		(), 
		(), 
		();
    
Insert into parts_used values
		(1, "Cup", 70001, 4), 
		(1, "sliverware", 70002, 4), 
		(1, "Plate", 70001, 4), 
		(), 
		();

Insert into MARKETING_SITES values
		(3001, "Town1, State", "Store1.com", "Store1"), 
		(3002, "Town2, State", "Store2.com", "Store2"), 
		(3003, "Town3, State", "Store3.com", "Store3"), 
		(3004, "Town4, State", "Store4.com", "Store4"), 
		(3005, "Town5, State", "Store5.com", "Store5");


Insert into INVOICE_RECORD values
		(0001, 003, 3001, "2011-03-01", 019), 
        (0001, 004, 3002, "2011-02-01", 018), 
        (0002, 007, 3002, "2011-02-01", 018), 
		(), 
		(), 
		();
        

        

Insert into INVOICE_LINE values 
		(01, 0001, 3001, 1, 150, 3), 
		(01, 0001, 3002, 1, 50, 1), 
		(01, 0002, 3002, 1, 100, 2), 
		(02, 0001, 3001, 2, 70, 1);
	
use project; 
Insert into WORKS_AT values
		(018, 3002, 40), 
		(), 
		(), 
		();

        

        

        
        
        
        
        
        

        




        

	



