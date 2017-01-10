--https://msdn.microsoft.com/en-us/library/ms175976.aspx

Use ZooTycoon

IF OBJECT_ID ( 'usp_GetErrorInfo', 'P' ) IS NOT NULL   
    DROP PROCEDURE usp_GetErrorInfo;  
GO  
  
-- Create procedure to retrieve error information.  
CREATE PROCEDURE usp_GetErrorInfo  
AS  
BEGIN
	SELECT  
		ERROR_NUMBER() AS ErrorNumber  
		,ERROR_SEVERITY() AS ErrorSeverity  
		,ERROR_STATE() AS ErrorState  
		,ERROR_PROCEDURE() AS ErrorProcedure  
		,ERROR_LINE() AS ErrorLine
		,ERROR_MESSAGE() AS ErrorMessage;  
END
GO  
  
--BEGIN TRY  
    -- Generate divide-by-zero error.  
    --SELECT 1/0;  
--END TRY  
--BEGIN CATCH  
    -- Execute error retrieval routine.  
    --EXECUTE usp_GetErrorInfo;  
--END CATCH;