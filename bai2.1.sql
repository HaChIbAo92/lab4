declare @max int, @num int
select @max = Max(cast(MANV as int )) from NHANVIEN;
set @num=1;
while @num <= @max
begin
	if @num %2 =0
		select TENNV, MANV from NHANVIEN where CAST (MANV as int) = @num;
		set @num=@num+1
end;