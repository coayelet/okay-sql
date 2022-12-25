select *
from INFORMATION_SCHEMA.TABLES
where TABLE_NAME like '%categ%'

select distinct COLUMN_NAME,TABLE_SCHEMA,TABLE_NAME
from INFORMATION_SCHEMA.COLUMNS
where COLUMN_NAME like '%mail%'


select *
from INFORMATION_SCHEMA.COLUMNS
where COLUMN_NAME like '%mail%'

select *
from person.contact



-- SQL system views
select *
from sys.tables
where name like '%categ%'

select *
from sys.schemas

select * 
from sys.columns
where name like '%mail%'

-- find products
-- x=733
select ProductSubcategoryID,*
from Production.Product
where ProductID=733

-- find productSubCategoty = 14
select *
from Production.ProductSubcategory
where ProductSubcategoryID=14

-- find productCategory = 2
select *
from Production.ProductCategory
where ProductCategoryID = 2


select p.Name as ProductName,c.Name as CategoryName
from Production.Product p left outer join Production.ProductSubcategory ps 
		on p.ProductSubcategoryID = ps.ProductSubcategoryID
		left join Production.ProductCategory c 
		on ps.ProductCategoryID = c.ProductCategoryID
where p.ProductID = 316


select *
from Production.Product p inner loop join Production.ProductSubcategory ps
	on p.ProductSubcategoryID = ps.ProductSubcategoryID
	
	
	
	
	
	
	DECLARE @counter NUMERIC(2)
SET @counter = 1

WHILE @counter <= 10
BEGIN
	/*
	SELECT productid, productname, unitprice
	FROM products
	WHERE productid = @counter
	*/
	if @counter % 2 = 0 
		begin
			print @counter
		end
	SET @counter = @counter+1

END



alter FUNCTION msf
(	
	@a int,
	@b int
)
RETURNS @tab TABLE 
(
	i int
)
AS
BEGIN
	-- Fill the table variable with the rows for your result set
	insert into @tab values(@a)
	insert into @tab values(@b)
	insert into @tab values(100)
	insert into @tab values(200)
	RETURN 
END
GO


select *
from dbo.msf(-1,88)






alter FUNCTION GetEmpDetails
(	
	@empid int
)
RETURNS TABLE 
AS
RETURN 
(

	select * 
	from Employees
	where EmployeeID = @empid
)
GO


select *
from dbo.GetEmpDetails(4)


