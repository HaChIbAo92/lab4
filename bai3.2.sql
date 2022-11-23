select*from PHONGBAN;

begin try
	declare @chia int;
	set @chia = 10/0;
end try
BEGIN catch
	declare @ErrorMessage nvarchar(2048), @ErrorSeverity int, @ErrorState int;
	select @ErrorMessage = ERROR_MESSAGE(),
			@ErrorSeverity = ERROR_SEVERITY(),
			@ErrorState = ERROR_STATE();
	Raiserror (@ErrorMessage, @ErrorSeverity, @ErrorState);
end catch;