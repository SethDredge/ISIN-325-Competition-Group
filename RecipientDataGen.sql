USE StudentFunds
--Generate Data for Recipient 
Declare @counter int = 1 
Declare @max int = 500 --set number of reprtitions here
Declare @fname nvarchar(50)
Declare @lname nvarchar(50)
Declare @StateID nvarchar(2) 
Declare @awardID int = 1

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
	From (SELECT 'Brady' AS LastName
	UNION SELECT 'Bennett' AS LastName
	UNION SELECT 'Flynn' AS LastName
	UNION SELECT 'Shaw' AS LastName
	UNION SELECT 'Sparks' AS LastName
	UNION SELECT 'Mills' AS LastName
	UNION SELECT 'Whittle' AS LastName
	UNION SELECT 'Gibbs' AS LastName
	UNION SELECT 'Poole' AS LastName
	UNION SELECT 'Perez' AS LastName
	UNION SELECT 'White' AS LastName
	UNION SELECT 'Lucas' AS LastName
	UNION SELECT 'Kenny' AS LastName
	UNION SELECT 'Nguyen' AS LastName
	UNION SELECT 'Washington' AS LastName
	UNION SELECT 'Edwards' AS LastName
	UNION SELECT 'Tate' AS LastName
	UNION SELECT 'Mann' AS LastName
	UNION SELECT 'Kelly' AS LastName
	UNION SELECT 'Maxwell' AS LastName
	UNION SELECT 'Strickland' AS LastName
	UNION SELECT 'Ford' AS LastName
	UNION SELECT 'Graves' AS LastName
	UNION SELECT 'Gallagher' AS LastName
	UNION SELECT 'Longmire' AS LastName) AS LastName ORDER BY NEWID())

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

Set @awardID = @awardID + 1

	INSERT INTO Recipient (FName, LName, StateID, AwardID)
	values (@fname, @lname, @StateID, @awardID)

	SET @counter = @counter + 1
End