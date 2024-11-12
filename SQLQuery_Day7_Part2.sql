Create PROCEDURE InsertProcMultiple

	-- Add the parameters for the stored procedure here
AS
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into dbo.details values('Kannur','akshay2301@gmail.com',2301,'GTEC student');
	update dbo.details set address_city='Banglore' where school_id='2301';

	insert into dbo.mini_details select address_city,email_ID from details where school_id like '%1';
	delete from dbo.mini_details where address_city in (select address_city from dbo.details where email_ID like 'o%');

RETURN