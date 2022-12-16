USE StudentFunds
--Generate Data for Donors 
Declare @counter int = 1 
Declare @max int = 500 --set number of reprtitions here
Declare @fname nvarchar(50)
Declare @lname nvarchar(50)
Declare @StateID nvarchar(2) 
Declare @DonationAmount money
Declare @DonationName nvarchar(50)

While @counter <= @max
Begin

Set @fname = (SELECT TOP 1 FirstName
	FROM (SELECT 'John' AS FirstName
	UNION SELECT 'Seth' AS FirstName
	UNION SELECT 'Bill' AS FirstName
	UNION SELECT 'Tom' AS FirstName
	UNION SELECT 'Bruce' AS FirstName
	UNION SELECT 'Mike' AS FirstName
	UNION SELECT 'James' AS FirstName
	UNION SELECT 'Colby' AS FirstName
	UNION SELECT 'Luke' AS FirstName
	UNION SELECT 'Dan' AS FirstName
	UNION SELECT 'Willard' AS FirstName
	UNION SELECT 'Sam' AS FirstName
	UNION SELECT 'Jeff' AS FirstName
	UNION SELECT 'Curt' AS FirstName
	UNION SELECT 'Sean' AS FirstName
	UNION SELECT 'Tim' AS FirstName
	UNION SELECT 'Matt' AS FirstName
	UNION SELECT 'Mark' AS FirstName
	UNION SELECT 'David' AS FirstName
	UNION SELECT 'Kevin' AS FirstName
	UNION SELECT 'Dani' AS FirstName
	UNION SELECT 'Jill' AS FirstName
	UNION SELECT 'Jane' AS FirstName
	UNION SELECT 'Suzy' AS FirstName
	UNION SELECT 'Paige' AS FirstName
	UNION SELECT 'Brenda' AS FirstName
	UNION SELECT 'Jessi' AS FirstName
	UNION SELECT 'Emilee' AS FirstName
	UNION SELECT 'Olivia' AS FirstName
	UNION SELECT 'Tori' AS FirstName
	UNION SELECT 'Misty' AS FirstName
	UNION SELECT 'Beth' AS FirstName
	UNION SELECT 'Sarah' AS FirstName
	UNION SELECT 'Willow' AS FirstName
	UNION SELECT 'Hazel' AS FirstName
	UNION SELECT 'Cathy' AS FirstName
	UNION SELECT 'Rachel' AS FirstName
	UNION SELECT 'Madi' AS FirstName
	UNION SELECT 'Kenzi' AS FirstName
	UNION SELECT 'Leah' AS FirstName) AS FirstName ORDER BY NEWID())

Set @lname = (SELECT TOP 1 LastName
	From (SELECT 'Smith' AS LastName
	UNION SELECT 'Dredge' AS LastName
	UNION SELECT 'Johnson' AS LastName
	UNION SELECT 'Williams' AS LastName
	UNION SELECT 'Brown' AS LastName
	UNION SELECT 'Jones' AS LastName
	UNION SELECT 'Miller' AS LastName
	UNION SELECT 'Davis' AS LastName
	UNION SELECT 'Garcia' AS LastName
	UNION SELECT 'Rodriguez' AS LastName
	UNION SELECT 'Wilson' AS LastName
	UNION SELECT 'Martinez' AS LastName
	UNION SELECT 'Anderson' AS LastName
	UNION SELECT 'Taylor' AS LastName
	UNION SELECT 'Thomas' AS LastName
	UNION SELECT 'Hernandez' AS LastName
	UNION SELECT 'Moore' AS LastName
	UNION SELECT 'Martin' AS LastName
	UNION SELECT 'Jackson' AS LastName
	UNION SELECT 'Thompson' AS LastName
	UNION SELECT 'White' AS LastName
	UNION SELECT 'Lopez' AS LastName
	UNION SELECT 'Lee' AS LastName
	UNION SELECT 'Gonzalez' AS LastName
	UNION SELECT 'Gogolin' AS LastName) AS LastName ORDER BY NEWID())

Set @StateID = (SELECT TOP 1 StateID
	From (SELECT 'MI' AS StateID
	UNION SELECT 'TX' AS StateID
	UNION SELECT 'HI' AS StateID
	UNION SELECT 'CO' AS StateID
	UNION SELECT 'MO' AS StateID
	UNION SELECT 'FL' AS StateID
	UNION SELECT 'ND' AS StateID
	UNION SELECT 'SD' AS StateID
	UNION SELECT 'OH' AS StateID
	UNION SELECT 'IN' AS StateID
	UNION SELECT 'NY' AS StateID) as StateID ORDER BY NEWID())

Set @DonationAmount = (SELECT TOP 1 DonationAmount
	From (SELECT '100' AS DonationAmount
	UNION SELECT '200' AS DonationAmount
	UNION SELECT '300' AS DonationAmount
	UNION SELECT '400' AS DonationAmount
	UNION SELECT '500' AS DonationAmount
	UNION SELECT '600' AS DonationAmount
	UNION SELECT '700' AS DonationAmount
	UNION SELECT '800' AS DonationAmount
	UNION SELECT '900' AS DonationAmount
	UNION SELECT '1000' AS DonationAmount
	UNION SELECT '2000' AS DonationAmount
	UNION SELECT '3000' AS DonationAmount
	UNION SELECT '4000' AS DonationAmount
	UNION SELECT '5000' AS DonationAmount
	UNION SELECT '6000' AS DonationAmount
	UNION SELECT '7000' AS DonationAmount
	UNION SELECT '8000' AS DonationAmount
	UNION SELECT '9000' AS DonationAmount
	UNION SELECT '10000' AS DonationAmount
	UNION SELECT '20000' AS DonationAmount) as DonationAmount ORDER BY NEWID())

Set @DonationName = (SELECT TOP 1 DonationName
	From (SELECT 'Alumni' AS DonationName
	UNION SELECT 'Scholarship' AS DonationName
	UNION SELECT 'Tithe' AS DonationName
	UNION SELECT 'Support' AS DonationName
	UNION SELECT 'General' AS DonationName) as DonationName ORDER BY NEWID())

	INSERT INTO Donor (Fname, LName, StateID, DonationAmount, DonationName) 
	values	(@fname, @lname, @StateID, @DonationAmount, @DonationName)

	SET @counter = @counter + 1
End