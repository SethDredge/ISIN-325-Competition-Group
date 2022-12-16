--Delete Fund
USE StudentFunds
--Generate Fund Data
Declare @counter int = 1 
Declare @max int = 200 --set number of reprtitions here
Declare @fundname nvarchar(50)
Declare @fundamount money
Declare @catID int
Declare @awardID int
Declare @donorID int
Declare @awardname nvarchar(50) 
Declare @awarddate date
Declare @awardamount money

While @counter <= @max
Begin
Set @fundname = (SELECT TOP 1 FundName
	From (SELECT 'Scholarship' AS FundName
	UNION SELECT 'RoomBoard' AS FundName
	UNION SELECT 'Grant' AS FundName
	UNION SELECT 'Research' AS FundName) as FundName ORDER BY NEWID())

Set @fundamount = (SELECT TOP 1 FundAmount
	From (SELECT '1000000000' AS FundAmount
	UNION SELECT '2000000000' AS FundAmount
	UNION SELECT '500000' AS FundAmount
	UNION SELECT '5000000000' AS FundAmount) as FundAmount ORDER BY NEWID())

Set @catID = (Select TOP 1 CatID
	From (Select CatID From Category) as CatID ORDER BY NEWID())

Set @awardID = (Select TOP 1 AwardID
	From (Select AwardID From Recipient) as AwardID ORDER BY NEWID())

Set @donorID = (Select TOP 1 DonorID
	From (Select DonorID From Donor) as DonorID ORDER BY NEWID())

Set @awardname = (SELECT TOP 1 AwardName
	From (SELECT 'Scholarship' AS AwardName
	UNION SELECT 'RoomBoard' AS AwardName
	UNION SELECT 'Grant' AS AwardName
	UNION SELECT 'Research' AS AwardName) as AwardName ORDER BY NEWID())

Set @awarddate = (SELECT TOP 1 AwardDate
	From (SELECT '2022-12-14' AS AwardDate
	UNION SELECT '2022-05-16' AS AwardDate
	UNION SELECT '2022-08-11' AS AwardDate
	UNION SELECT '2022-07-07' AS AwardDate
	UNION SELECT '2022-09-30' AS AwardDate
	UNION SELECT '2022-02-20' AS AwardDate
	UNION SELECT '2022-06-15' AS AwardDate
	UNION SELECT '2022-04-10' AS AwardDate
	UNION SELECT '2022-11-25' AS AwardDate
	UNION SELECT '2022-01-01' AS AwardDate) as AwardDate ORDER BY NEWID())

Set @awardamount = (SELECT TOP 1 AwardAmount
	From (SELECT '100' AS AwardAmount
	UNION SELECT '200' AS AwardAmount
	UNION SELECT '300' AS AwardAmount
	UNION SELECT '400' AS AwardAmount
	UNION SELECT '500' AS AwardAmount
	UNION SELECT '600' AS AwardAmount
	UNION SELECT '700' AS AwardAmount
	UNION SELECT '800' AS AwardAmount
	UNION SELECT '900' AS AwardAmount
	UNION SELECT '1000' AS AwardAmount
	UNION SELECT '2000' AS AwardAmount
	UNION SELECT '3000' AS AwardAmount
	UNION SELECT '4000' AS AwardAmount
	UNION SELECT '5000' AS AwardAmount
	UNION SELECT '6000' AS AwardAmount
	UNION SELECT '7000' AS AwardAmount
	UNION SELECT '8000' AS AwardAmount
	UNION SELECT '9000' AS AwardAmount
	UNION SELECT '10000' AS AwardAmount
	UNION SELECT '20000' AS AwardAmount) as AwardAmount ORDER BY NEWID())

	INSERT INTO Fund (FundName, FundAmount, CatID, AwardID, DonorID, AwardName, AwardDate, AwardAmount)
	values (@FundName, @FundAmount, @catID, @awardID, @donorID, @AwardName, @AwardDate, @AwardAmount)

	SET @counter = @counter + 1
End