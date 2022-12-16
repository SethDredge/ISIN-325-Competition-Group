USE StudentFunds
--Generate Fund Data
Declare @counter int = 1 
Declare @max int = 500 --set number of reprtitions here
Declare @catname nvarchar(50)
Declare @statename nvarchar(50)

While @counter <= @max
Begin
Set @catname = (SELECT TOP 1 CategoryName
	From (SELECT 'Scholarship' AS CategoryName
	UNION SELECT 'RoomBoard' AS CategoryName
	UNION SELECT 'Grant' AS CategoryName
	UNION SELECT 'Research' AS CategoryName) as CategoryName ORDER BY NEWID())

Set @statename = (SELECT TOP 1 StateName
	From (SELECT 'MI' AS StateName
	UNION SELECT 'TX' AS StateName
	UNION SELECT 'FL' AS StateName
	UNION SELECT 'OR' AS StateName
	UNION SELECT 'CA' AS StateName
	UNION SELECT 'IL' AS StateName
	UNION SELECT 'IN' AS StateName
	UNION SELECT 'PA' AS StateName
	UNION SELECT 'NV' AS StateName
	UNION SELECT 'NM' AS StateName) as StateName ORDER BY NEWID())

	INSERT INTO Category (CatName, StateName)
	VALUES (@catname, @statename)

	SET @counter = @counter + 1
End