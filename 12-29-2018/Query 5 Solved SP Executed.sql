USE [dbProductManage]
GO

DECLARE	@return_value int

EXEC	@return_value = [dbo].[InsertCustomerDetails]
		@FirstName = N'Harsha',
		@LastName = N'Shinde',
		@City = N'Ahmedabad',
		@State = N'GJ',
		@Zip = N'385001',
		@ProductID = 3,
		@SalePrice = 205,
		@SaleDate = '12-12-2012'

SELECT	'Return Value' = @return_value

GO
